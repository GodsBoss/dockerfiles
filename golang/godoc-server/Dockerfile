ARG GOLANG_VERSION
ARG ALPINE_VERSION
FROM golang:${GOLANG_VERSION}-alpine${ALPINE_VERSION} AS build
RUN apk add --update-cache \
  git
RUN go get -u -v golang.org/x/tools/cmd/godoc

ARG ALPINE_VERSION
FROM alpine:${ALPINE_VERSION}
LABEL maintainer=godsboss@gmx.de
EXPOSE 6060
COPY --from=build /usr/local/go/src /usr/local/go/src
COPY --from=build /usr/local/go/doc /usr/local/go/doc
COPY --from=build /go/bin/godoc /usr/bin/godoc
ENTRYPOINT ["/usr/bin/godoc"]
CMD ["-http", ":6060", "-index"]
