#! /usr/bin/env sh
cd "$(dirname "$(readlink -f "$0")")"
find . -type f -exec ./add.sh {} \;
