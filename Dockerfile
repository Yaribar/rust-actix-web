FROM rust:latest as builder
ENV APP webdocker
WORKDIR /usr/src/$APP
COPY . .
RUN cargo install --path .
 
FROM debian:bookworm-slim
ENV APP webdocker
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates && rm -rf /var/lib/apt/lists/*
COPY --from=builder /usr/local/cargo/bin/$APP /usr/local/bin/$APP
#export this actix web service to port 8080 and 0.0.0.0
EXPOSE 8080
CMD ["webdocker"]
