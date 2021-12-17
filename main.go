package main

import (
	"context"
	"fmt"
	"log"

	"github.com/google/go-containerregistry/pkg/authn"
	"github.com/google/go-containerregistry/pkg/name"
	"github.com/google/go-containerregistry/pkg/v1/remote"
	"github.com/google/ko/pkg/build"
	"github.com/google/ko/pkg/publish"
)

const (
	baseImage  = "gcr.io/distroless/static:nonroot"
	targetRepo = "gcr.io/imjasonh/miniko"
	importpath = "github.com/imjasonh/miniko"
	commitSHA  = "deadbeef"
)

func main() {
	ctx := context.Background()

	b, err := build.NewGo(ctx, ".",
		build.WithPlatforms("linux/amd64"),
		build.WithBaseImages(func(ctx context.Context, _ string) (name.Reference, build.Result, error) {
			ref := name.MustParseReference(baseImage)
			base, err := remote.Index(ref, remote.WithContext(ctx))
			return ref, base, err
		}),
		build.WithConfig(map[string]build.Config{
			"github.com/google/ko/cmd/miniko": build.Config{
				Ldflags: []string{"-X main.commitSHA=" + commitSHA}, // meta!
			},
		}))
	if err != nil {
		log.Fatalf("NewGo: %v", err)
	}
	r, err := b.Build(ctx, importpath)
	if err != nil {
		log.Fatalf("Build: %v", err)
	}

	p, err := publish.NewDefault(targetRepo,
		publish.WithTags([]string{commitSHA}),
		publish.WithAuthFromKeychain(authn.DefaultKeychain))
	if err != nil {
		log.Fatalf("NewDefault: %v", err)
	}
	ref, err := p.Publish(ctx, r, importpath)
	if err != nil {
		log.Fatalf("Publish: %v", err)
	}
	fmt.Println(ref.String())
}
