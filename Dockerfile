FROM golang:1.15.8 AS builder
WORKDIR /go/src/github.com/coreos/etcd-operator

ARG VERSION=dev
ARG REVISION=dev

COPY . .

# Produce a static / reproducible build
ENV GO111MODULE=on
ENV CGO_ENABLED=0
ENV GOOS=linux
ENV GOARCH=amd64
RUN go build \
    --ldflags "-X 'github.com/coreos/etcd-operator/version.GitSHA=$REVISION' -X 'github.com/coreos/etcd-operator/version.Version=$VERSION'" \
    -o /usr/local/bin/etcd-operator github.com/coreos/etcd-operator/cmd/operator
RUN go build \
    --ldflags "-X 'github.com/coreos/etcd-operator/version.GitSHA=$REVISION' -X 'github.com/coreos/etcd-operator/version.Version=$VERSION'" \
    -o /usr/local/bin/etcd-backup-operator github.com/coreos/etcd-operator/cmd/backup-operator
RUN go build \
    --ldflags "-X 'github.com/coreos/etcd-operator/version.GitSHA=$REVISION' -X 'github.com/coreos/etcd-operator/version.Version=$VERSION'" \
    -o /usr/local/bin/etcd-restore-operator github.com/coreos/etcd-operator/cmd/restore-operator

FROM alpine:3.13.2

RUN apk add --no-cache ca-certificates

COPY --from=builder /usr/local/bin/etcd-operator /usr/local/bin/etcd-operator
COPY --from=builder /usr/local/bin/etcd-backup-operator /usr/local/bin/etcd-backup-operator
COPY --from=builder /usr/local/bin/etcd-restore-operator /usr/local/bin/etcd-restore-operator

RUN adduser -D etcd-operator
USER etcd-operator
