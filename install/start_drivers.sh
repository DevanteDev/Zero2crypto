#!/bin/bash
export DISPLAY=:0
sudo aticonfig --adapter=all -f --initial
sudo aticonfig --lsa
sudo aticonfig --adapter=all --odgt
