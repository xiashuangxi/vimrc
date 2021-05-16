#!/bin/sh
set -e

if [ ! -d ~/vimfiles ];then
	mkdir ~/vimfiles
fi

cat ./vimrcs/basic.vim > ~/vimfiles/vimrc
echo "成功安装了Vim的基本配置！:P"
