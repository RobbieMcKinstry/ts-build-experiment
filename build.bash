#!/bin/bash
rm -r dist || true
mkdir -p dist/static || true
cp -r static/* dist/static/
node build.js
