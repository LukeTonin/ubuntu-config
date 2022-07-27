#!/bin/bash

# This small script simply clones the ubuntu-config repository if required.

set -e;

FILES_PATH=~/files
mkdir --parents $FILES_PATH
cd $FILES_PATH

sudo apt update;
sudo apt install git;

git clone https://github.com/LukeTonin/ubuntu-config.git;

