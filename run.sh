#!/bin/bash
export KONG_VERSION="2.1.3"

install_pongo() {
    git clone --single-branch https://github.com/Kong/kong-pongo $(pwd)/kong-pongo
    $(pwd)/kong-pongo/pongo.sh up
    $(pwd)/kong-pongo/pongo.sh build
}

pongo() {
    $(pwd)/kong-pongo/pongo.sh lint
    $(pwd)/kong-pongo/pongo.sh run
}

package() {
    mkdir -p ./dist
    ./package.sh
}

$1