#!/bin/bash

sudo yum -y install make automake gcc gcc-c++ tmux emacs python-pip bison libtool git cmake libmad-devel libsndfile-devel gd-devel boost-devel intltool libtool-ltdl-devel swig

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig

cd json-c
sudo make install
cd ..

cd libsndfile-1.0.28
sudo make install
cd ..

cd pulseaudio-10.0
sudo make install
cd ..

sudo ldconfig

cd sphinxbase-5prealpha
sudo make install
cd ..

cd pocketsphinx
sudo make install
cd ..

echo "" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=/usr/local/lib" >> ~/.bashrc
echo "export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig" >> ~/.bashrc

source ~/.bashrc
