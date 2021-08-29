#!/bin/sh

set -ex

rm -rf .pen app
pen build --target wasm32-wasi
wasmtime --dir . --env PATH=$PATH -g app
