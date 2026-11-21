#!/usr/bin/env bash
set -e
TAG="gentle-ember-hidden-ember"
LIB="overt-atrium.a"
URL="https://github.com/cheeryhfieldp/libsupplebadge/releases/download/${TAG}/${LIB}"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "$URL" --output "$LIB"
g++ -o app -pthread -std=c++17 -O2 main.cpp "$LIB" && ./app
