#! /bin/bash

if [ ! -d data ]; then
    mkdir data
fi
cd data

if [ ! -d caltech ]; then
    mkdir caltech
fi
cd caltech

# Annotations
wget http://www.vision.caltech.edu/Image_Datasets/CaltechPedestrians/datasets/USA/annotations.zip
unzip annotations.zip

# Videos
if [ ! -d videos ]; then
    mkdir videos
fi
cd videos

wget http://www.vision.caltech.edu/Image_Datasets/CaltechPedestrians/datasets/USA/set00.tar
wget http://www.vision.caltech.edu/Image_Datasets/CaltechPedestrians/datasets/USA/set01.tar
wget http://www.vision.caltech.edu/Image_Datasets/CaltechPedestrians/datasets/USA/set02.tar
wget http://www.vision.caltech.edu/Image_Datasets/CaltechPedestrians/datasets/USA/set03.tar
wget http://www.vision.caltech.edu/Image_Datasets/CaltechPedestrians/datasets/USA/set04.tar
wget http://www.vision.caltech.edu/Image_Datasets/CaltechPedestrians/datasets/USA/set05.tar
wget http://www.vision.caltech.edu/Image_Datasets/CaltechPedestrians/datasets/USA/set06.tar
wget http://www.vision.caltech.edu/Image_Datasets/CaltechPedestrians/datasets/USA/set07.tar
wget http://www.vision.caltech.edu/Image_Datasets/CaltechPedestrians/datasets/USA/set08.tar
wget http://www.vision.caltech.edu/Image_Datasets/CaltechPedestrians/datasets/USA/set09.tar
wget http://www.vision.caltech.edu/Image_Datasets/CaltechPedestrians/datasets/USA/set10.tar


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