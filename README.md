# Rando

Rando is a collection of utilities packaged as a docker container.

See Makefile for details.

## Run as docker container

    docker run --rm ikupczynski/rando <args>

Example:

    ❯ docker run --rm ikupczynski/rando cpus
    Number of CPUs: 4       [runtime.NumCPU()]
