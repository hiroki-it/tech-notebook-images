#!/bin/bash

DIR=./images/drawio/blog/terraform

# svgをpngに変換する
for file in `find ${DIR} -name "*.svg"`; do
  qlmanage -t -s 2048 -o ${DIR} $file
done

# 拡張子からsvgを削除する
for file in `find ${DIR} -name "*.svg.png"`; do
  rename "s/svg.png/png/;" $file
done
