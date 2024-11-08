# Build image
FROM crystallang/crystal:latest-alpine as builder
MAKEDIR -p /opt/app
WORKDIR /opt
# Cache dependencies
COPY ./shard.yml ./shard.lock /opt/
RUN shards install -v
# Build a binary
COPY . /opt/
RUN crystal build --static --release ./src/firestore/stub.cr
# ===============
# Result image with one layer
FROM alpine:latest
WORKDIR /
COPY --from=builder /opt/app .
ENTRYPOINT ["./app", "-p", "8080"]