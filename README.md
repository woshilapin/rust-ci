rust-ci
=====

This is a repository to autobuild a ready-to-use Docker image for your CI. It
comes with the following tools pre-installed:
- [`rustfmt`]: auto-formatting of the Rust source code
- [`clippy`]: static linting of the Rust source code
- [`cargo-tomlfmt`]: auto-formatting of TOML files
- [`cargo-tarpaulin`]: code coverage reporting tool for Rust

The image is automatically built by [Dockerhub] when a new git tag is published
or when a push is done on the `master` branch (image `latest` on [DockerHub]).
The tags correspond to the versions of Rust.

[`rustfmt`]: https://github.com/rust-lang/rustfmt
[`clippy`]: https://github.com/rust-lang/rust-clippy
[`cargo-tomlfmt`]: https://github.com/tbrand/cargo-tomlfmt
[`cargo-tarpaulin`]: https://github.com/xd009642/tarpaulin
[DockerHub]: https://hub.docker.com
