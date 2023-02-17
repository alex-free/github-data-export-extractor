#!/bin/bash

ver=1.0.1
set -e

cd "$(dirname "$0")"
rm -rf github-data-export-extractor-$ver*

if [ "$1" == "--clean" ]; then
    exit 0
fi

mkdir github-data-export-extractor-$ver
cp -r gdee readme.md images unlicense.txt github-data-export-extractor-$ver
chmod -R 777 github-data-export-extractor-$ver
zip -r github-data-export-extractor-$ver.zip github-data-export-extractor-$ver