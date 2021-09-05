#!/bin/sh

set -ex

rm -rf .pen app foo.json foo
pen build --target wasm32-wasi
wasm2wat --enable-tail-call app >app.wat
wasmtime --dir . --env PATH=$PATH -g app
