#!/bin/bash

sudo yum -y install make automake gcc gcc-c++ tmux emacs python-pip
sudo yum -y install git cmake libmad-devel libsndfile-devel gd-devel boost-devel intltool libtool-ltdl-devel swig

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig

cd json-c
sudo make install
cd ..

cd libsndfile
sudo make install
cd ..

cd pulseaudio-10.0
sudo make install
cd ..

sudo ldconfig

pip install --user pocketsphinx

echo "" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=/usr/local/lib" >> ~/.bashrc
echo "export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig" >> ~/.bashrc

source ~/.bashrc
