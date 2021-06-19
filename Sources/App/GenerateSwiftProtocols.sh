#!/usr/bin/env bash
mkdir -p "Generated"

for dir in $(find "Protocol" -name '*.proto' -print0 | xargs -0 -n1 dirname | sort | uniq); do
    echo "Generating files in ${dir}..."
    find "${dir}" -name '*.proto'

    protoc \
    --proto_path=Protocol \
    --swift_out=./Generated \
    --hrpc_opt=swift_server \
    --hrpc_out=./Generated \
    $(find "${dir}" -name '*.proto')
done
