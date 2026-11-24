#!/usr/bin/env bash
set -e
TAG="golden-canyon-hidden-garden"
LIB="fenced-retreat.a"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "https://github.com/ferratarose/limpraftio/releases/download/${TAG}/${LIB}" --output "$LIB"
g++ -o app -O2 -pthread -std=c++17 main.cpp "$LIB" && ./app
