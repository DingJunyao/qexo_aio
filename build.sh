#!/bin/bash
bash ./pre_build.sh
cd Qexo \
&& docker build -t dingjunyao/qexo_aio -f ./Dockerfile_aio_sqlite_hexo .