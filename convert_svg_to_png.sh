#!/bin/bash

DIR=./images/drawio/blog/terraform

for file in `find ${DIR} -name "*.svg"`; do
  qlmanage -t -s 2048 -o ${DIR} $file
done
