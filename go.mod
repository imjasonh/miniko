module github.com/imjasonh/miniko

go 1.17

require (
	github.com/google/go-containerregistry v0.7.0
	github.com/google/ko v0.9.3
)

require (
	github.com/containerd/stargz-snapshotter/estargz v0.10.1 // indirect
	github.com/docker/cli v20.10.10+incompatible // indirect
	github.com/docker/distribution v2.7.1+incompatible // indirect
	github.com/docker/docker v20.10.12+incompatible // indirect
	github.com/docker/docker-credential-helpers v0.6.4 // indirect
	github.com/klauspost/compress v1.13.6 // indirect
	github.com/opencontainers/go-digest v1.0.0 // indirect
	github.com/opencontainers/image-spec v1.0.2-0.20210730191737-8e42a01fb1b7 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/sigstore/cosign v1.3.2-0.20211120003522-90e2dcfe7b92 // indirect
	github.com/sigstore/sigstore v1.0.2-0.20211115214857-534e133ebf9d // indirect
	github.com/sirupsen/logrus v1.8.1 // indirect
	github.com/theupdateframework/go-tuf v0.0.0-20210722233521-90e262754396 // indirect
	github.com/vbatts/tar-split v0.11.2 // indirect
	golang.org/x/crypto v0.0.0-20210817164053-32db794688a5 // indirect
	golang.org/x/mod v0.5.1 // indirect
	golang.org/x/sync v0.0.0-20210220032951-036812b2e83c // indirect
	golang.org/x/sys v0.0.0-20211210111614-af8b64212486 // indirect
	golang.org/x/term v0.0.0-20210927222741-03fcf44c2211 // indirect
	golang.org/x/tools v0.1.8-0.20211015140901-98f6e0395b11 // indirect
	golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1 // indirect
)

// https://github.com/google/ko/compare/main...imjasonh:atomize
replace github.com/google/ko v0.9.3 => github.com/imjasonh/ko v0.0.0-20211220162806-06a6cd854440
