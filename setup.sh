#!/usr/bin/env bash
set -ex

apt-get update
apt-get install -y --no-install-recommends apt-transport-https ca-certificates curl git lsb-release openssh-client

curl -sSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
echo "deb https://deb.nodesource.com/node_12.x $(lsb_release -s -c) main" | tee /etc/apt/sources.list.d/nodesource.list
echo "deb-src https://deb.nodesource.com/node_12.x $(lsb_release -s -c) main" | tee -a /etc/apt/sources.list.d/nodesource.list
apt-get update
apt-get install -y --no-install-recommends nodejs

apt-get remove -y lsb-release
rm -rf /var/lib/apt/lists/*

node --version
npm --version
