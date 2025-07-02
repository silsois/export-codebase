#!/bin/bash

docker build -t codebase-exporter .
docker run --rm \
    -v "$(pwd):/code/output" \
    -v "/Users/[you]/your-codebase-path" \
    codebase-exporter \
    sh -c "codebase-to-text --input /code/src --output /code/output/codebase-output.txt --output_type txt"
