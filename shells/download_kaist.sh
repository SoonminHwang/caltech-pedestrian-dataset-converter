#!/bin/bash
# file: download_kaist.sh
# written by Soonmin Hwang
# 16.09.08.
#
# This script creates folders hierarchically and download corresponding video sequence files.

if [ ! -d data ]; then
    mkdir data
fi
cd data

if [ ! -d kaist ]; then
    mkdir kaist
fi
cd kaist

wget http://multispectral.kaist.ac.kr/pedestrian/data-kaist/annotations.tar
tar xvf annotations.tar

if [ ! -d videos ]; then
    mkdir videos
fi
cd videos

# Training set
wget http://multispectral.kaist.ac.kr/pedestrian/data-kaist/videos/set00.tar
wget http://multispectral.kaist.ac.kr/pedestrian/data-kaist/videos/set01.tar
wget http://multispectral.kaist.ac.kr/pedestrian/data-kaist/videos/set02.tar
wget http://multispectral.kaist.ac.kr/pedestrian/data-kaist/videos/set03.tar
wget http://multispectral.kaist.ac.kr/pedestrian/data-kaist/videos/set04.tar
wget http://multispectral.kaist.ac.kr/pedestrian/data-kaist/videos/set05.tar

# Testing set
wget http://multispectral.kaist.ac.kr/pedestrian/data-kaist/videos/set06.tar
wget http://multispectral.kaist.ac.kr/pedestrian/data-kaist/videos/set07.tar
wget http://multispectral.kaist.ac.kr/pedestrian/data-kaist/videos/set08.tar
wget http://multispectral.kaist.ac.kr/pedestrian/data-kaist/videos/set09.tar
wget http://multispectral.kaist.ac.kr/pedestrian/data-kaist/videos/set10.tar
wget http://multispectral.kaist.ac.kr/pedestrian/data-kaist/videos/set11.tar

mkdir set00 & tar xvf set00.tar -C set00
mkdir set01 & tar xvf set01.tar -C set01
mkdir set02 & tar xvf set02.tar -C set02
mkdir set03 & tar xvf set03.tar -C set03
mkdir set04 & tar xvf set04.tar -C set04
mkdir set05 & tar xvf set05.tar -C set05

mkdir set06 & tar xvf set06.tar -C set06
mkdir set07 & tar xvf set07.tar -C set07
mkdir set08 & tar xvf set08.tar -C set08
mkdir set09 & tar xvf set09.tar -C set09
mkdir set10 & tar xvf set10.tar -C set10
mkdir set11 & tar xvf set11.tar -C set11

cd ../../../