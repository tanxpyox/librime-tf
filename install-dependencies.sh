#!/usr/bin/env bash

# Download librime
git clone https://github.com/rime/librime.git --depth=1 --recurse-submodules ${RIME_DIR}

# Download Tensorflow
git clone --depth=1 https://github.com/tensorflow/tensorflow.git ${PLUGIN_DIR}/thirdparty

# Create symbolic link from PLUGIN_DIR to root
ln -s $PLUGIN_DIR .
