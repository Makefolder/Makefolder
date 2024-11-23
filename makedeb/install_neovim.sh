#!/bin/bash

git clone https://github.com/neovim/neovim
cd /root/neovim
make CMAKE_BUILD_TYPE=Release
make install

cd /root
rm -rf /root/neovim
