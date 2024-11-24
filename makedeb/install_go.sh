#!/bin/bash
wget https://go.dev/dl/go1.23.3.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.23.3.linux-amd64.tar.gz
rm -rf go1.23.3.linux-amd64.tar.gz
apt install -y gopls
