#!/usr/bin/env sh

set -eux

main() {
    rm -rf -- dist build

    python3 setup.py clean
    python3 setup.py sdist
    python3 -m twine upload dist/*
}

main "$@"
