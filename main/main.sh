#!/bin/sh

set -ex

rm -rf .pen app foo.json foo
pen build --target wasm32-wasi 2>&1 | tee pen-build.log
wasmtime app
