# miniko demo

This demonstrates how to use `github.com/google/ko` packages as a libary to
build and publish Go code from your own Go binaries, similar to how the `ko`
CLI itself works.

```
$ go run ./
2021/12/17 16:12:52 Building github.com/imjasonh/miniko for linux/amd64
2021/12/17 16:12:58 Publishing gcr.io/imjasonh/miniko/github.com/imjasonh/miniko:deadbeef
2021/12/17 16:12:58 Published gcr.io/imjasonh/miniko/github.com/imjasonh/miniko:deadbeef@sha256:74f473c0046a926db66424267817bc07beedd1514edba3c320fd0155d0522a8f
gcr.io/imjasonh/miniko/github.com/imjasonh/miniko:deadbeef@sha256:74f473c0046a926db66424267817bc07beedd1514edba3c320fd0155d0522a8f
```

This will build and push this code to `gcr.io/imjasonh` (unless it fails
because you're not authorized), based on `gcr.io/distroless/static:nonroot`.

The image will be tagged with a nonsense commit SHA, and that value will be set
in a `const` in the code using `ldflags`.
