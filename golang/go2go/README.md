go2go
=====

## Build

    docker build -t godsboss/go2go golang/go2go

We don't use version tags here because the ongoing development branch for this has no tags, either.

## Example usage

    docker run --rm -it -v ${PWD}:/home/godev/project --workdir /home/godev/project godsboss/go2go -brackets test
