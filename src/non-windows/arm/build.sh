#!/usr/bin/env bash

#gcc -Wall -std=c99 -I../.. -o flash ../../main.c ../rs232.c
#cp flash ../../../bin/linux/flash
#rm -f flash

cmake . -DCMAKE_TOOLCHAIN_FILE=Toolchain-rpi.cmake \
  && make \
  && mkdir -p ../../../bin/arm \
  && mv flash ../../../bin/arm/flash \
  && make clean

rm -rf CMakeFiles
rm CMakeCache.txt
rm Makefile
rm cmake_install.cmake
