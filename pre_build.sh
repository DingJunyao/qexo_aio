#!/bin/bash
rm -rf Qexo
docker rmi dingjunyao/qexo_aio -f
git clone https://github.com/DingJunyao/Qexo \
&& cd Qexo && git checkout dev_ding \
&& mv README.md README_ori.md \
&& cp ../README.md .