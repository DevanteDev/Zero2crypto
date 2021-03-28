#!/bin/bash
export DISPLAY=:0
export GPU_USE_SYNC_OBJECTS=1
export GPU_MAX_ALLOC_PERCENT=100
export GPU_MAX_HEAP_SIZE=100
cd ~/Downloads/cgminer/cgminer-3.7.2/
sudo ./cgminer -c ~/zero2crypto/configs/tmb-r9-270.conf
