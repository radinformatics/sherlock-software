#!/bin/sh

###############################################################################
# Python (Anaconda)
###############################################################################

SOFTWARE=/share/PI/langlotz/software

# First let's download and setup anaconda, python 3
wget https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh
bash Anaconda3-4.2.0-Linux-x86_64.sh -b -p $SOFTWARE/anaconda3

# python 2
wget https://repo.continuum.io/archive/Anaconda2-4.2.0-Linux-x86_64.sh
bash Anaconda2-4.2.0-Linux-x86_64.sh -b -p /share/PI/langlotz/software/anaconda2

git clone git@github.com:radinformatics/sherlock-software.git
mv sherlock-software modules

###############################################################################
# rmate (remote sessions with atom
###############################################################################

mkdir rmate
curl -o /share/PI/langlotz/software/rmate/rmate https://raw.githubusercontent.com/aurora/rmate/master/rmate
chmod g+rwx /share/PI/langlotz/software/rmate/rmate


###############################################################################
# node.js
###############################################################################

git clone https://github.com/nodejs/node
mkdir nodejs
# Node must be configured with python < 3
module load anaconda2 # or do module load anaconda/anaconda2 if you haven't installed above
# We also need a newer version of g++
wget http://www.netgull.com/gcc/releases/gcc-6.2.0/gcc-6.2.0.tar.gz
tar -xzvf gcc-6.2.0.tar.gz
cd node
./configure --prefix=/share/PI/langlotz/software/nodejs



# Give everyone permission to use
chmod g+rw -R /share/PI/langlotz/software
