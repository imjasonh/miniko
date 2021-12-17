# miniko demo

This demonstrates how to use `github.com/google/ko` packages as a libary to
build and publish Go code from your own Go binaries, similar to how the `ko`
CLI itself works.

```
go run ./
```

This will build and push this code to `gcr.io/imjasonh` (unless it fails
because you're not authorized), based on `gcr.io/distroless/static:nonroot`.

The image will be tagged with a nonsense commit SHA, and that value will be set
in a `const` in the code using `ldflags`.
