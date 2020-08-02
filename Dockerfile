# To manually publish this image
# $ docker system prune --all
# $ docker build -t rust-ci --file Dockerfile.ci .
# $ docker login
# $ docker tag rust-ci woshilapin/rust-ci:latest
# $ docker push woshilapin/rust-ci:latest
FROM rust:slim

RUN apt update && apt install --yes libssl-dev pkg-config curl libcurl4
RUN rustup component add rustfmt clippy
RUN cargo install cargo-tomlfmt
RUN cargo install cargo-tarpaulin
