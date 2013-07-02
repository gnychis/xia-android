#!/bin/bash

# Copy all of the files over
cp -fr ../xia-core/api/xsocket/*.c jni/XIASocket/
cp -fr ../xia-core/api/dagaddr/cpp/* jni/dagaddr/

# Rename all of the .c files to .cc
for file in jni/XIASocket/*.c; do
  bn=$(basename $file .c)
  mv $file jni/XIASocket/$bn.cc
done

# Rename all of the .cpp files to .cc
#for file in jni/dagaddr/*.cpp; do
#  bn=$(basename $file .cpp)
#  mv $file jni/dagaddr/$bn.cc
#done

# Your standard android NDK build
ndk-build
