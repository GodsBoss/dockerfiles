FROM golang:1.11.0-alpine3.8

RUN apk add --update-cache \
  git

RUN go get -u -v gopkg.in/alecthomas/gometalinter.v2
RUN ln -s /go/bin/gometalinter.v2 /go/bin/gometalinter
RUN gometalinter.v2 --install
