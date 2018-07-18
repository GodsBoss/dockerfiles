FROM golang:1.10.3-alpine3.7 AS build
RUN apk add --update-cache \
  git
RUN go get -u -v golang.org/x/tools/cmd/godoc

FROM alpine:3.7
LABEL maintainer=godsboss@gmx.de
EXPOSE 6060
COPY --from=build /usr/local/go/src /usr/local/go/src
COPY --from=build /usr/local/go/doc /usr/local/go/doc
COPY --from=build /go/bin/godoc /usr/bin/godoc
ENTRYPOINT ["/usr/bin/godoc", "-http", ":6060", "-index"]
