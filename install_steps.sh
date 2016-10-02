#!/bin/sh

# First let's download and setup anaconda, python 3
wget https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh
bash Anaconda3-4.2.0-Linux-x86_64.sh -b -p /share/PI/langlotz/software/anaconda3

# python 2
wget https://repo.continuum.io/archive/Anaconda2-4.2.0-Linux-x86_64.sh
bash Anaconda2-4.2.0-Linux-x86_64.sh -b -p /share/PI/langlotz/software/anaconda2

# Give everyone permission to use
chmod g+rw -R /share/PI/langlotz/software
