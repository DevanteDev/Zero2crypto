#!/bin/bash
cd ~/Downloads
mkdir cgminer ; cd cgminer
wget http://ck.kolivas.org/apps/cgminer/old/3.7/cgminer-3.7.2.tar.bz2
bzip2 -d cgminer-3.7.2.tar.bz2 ; tar -xf cgminer-3.7.2.tar

cd ~/Downloads
unzip ADL_SDK.zip
cp ./include/* ~/Downloads/cgminer/cgminer-3.7.2/ADL_SDK/

cd ~/Downloads/cgminer/cgminer-3.7.2/
CFLAGS="-O2 -Wall -march=native -I /opt/AMDAPP/include/" LDFLAGS="-L/opt/AMDAPP/lib/x86" ./configure --enable-opencl --enable-scrypt
make
