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


# Give everyone permission to use
chmod g+rw -R /share/PI/langlotz/software
