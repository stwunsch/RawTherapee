#!/bin/bash

mkdir build
cd build
bash ../recmake.sh
make -j8
make install
