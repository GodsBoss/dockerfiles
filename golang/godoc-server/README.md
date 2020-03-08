Godoc HTTP Server
=================

Usage
-----

### Provide standard library documentation

    docker run -p 6060:6060 --rm godsboss/godoc-server

exposes a godoc HTTP server on port 6060, but only provides standard library documentation.

### Documentation for all Go packages

Inside the container, `/usr/local/go` is the Go folder. If `$GOPATH` is set, use:

    docker run -p 6060:6060 --rm \
      --mount type=bind,src=${GOPATH}/src,target=/usr/local/go/src,readonly \
      godsboss/godoc-server

Else, this should do it:

    docker run -p 6060:6060 --rm \
      --mount type=bind,src=${HOME}/go/src,target=/usr/local/go/src,readonly \
      godsboss/godoc-server

### Documentation for some Go packages

It is also possible to mount only the desired packages.

    docker run -p 6060:6060 --rm \
      --mount type=bind,src=${GOPATH}/src/github.com/GodsBoss,target=/usr/local/go/src/github.com/GodsBoss,readonly \
      --mount type=bind,src=${GOPATH}/src/golang.org/x/tools/godoc,target=/usr/local/go/src/golang.org/x/tools/godoc,readonly \
      godsboss/godoc-server

will show documentation for the standard library and both `github.com/GodsBoss` and `golang.org/x/tools/godoc`, including all subpackages.
