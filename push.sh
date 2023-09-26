#!/bin/bash
bash ./pre_build.sh
cd Qexo \
&& docker buildx build \
    --platform linux/amd64,linux/arm64 \
    -f ./Dockerfile_aio_sqlite_hexo   \
    -t dingjunyao/qexo_aio:latest --push .