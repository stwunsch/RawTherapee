#!/bin/bash

export PKG_CONFIG_PATH=/opt/homebrew/Cellar/libffi/3.3_2/lib/pkgconfig:/opt/homebrew/Cellar/expat/2.2.10/lib/pkgconfig && \
cmake  .. \
          -DCMAKE_BUILD_TYPE="release" \
          -DOSX_DEV_BUILD="ON" \
          -DPROC_TARGET_NUMBER="2" \
          -DCACHE_NAME_SUFFIX="5.8-dev" \
          -DCMAKE_C_COMPILER="/opt/homebrew/Cellar/llvm/11.0.1/bin/clang" \
          -DCMAKE_CXX_COMPILER="/opt/homebrew/Cellar/llvm/11.0.1/bin/clang++" \
          -DCMAKE_OSX_DEPLOYMENT_TARGET="11.2" \
          -DWITH_LTO="ON" \
          -DLENSFUNDBDIR="/Applications/RawTherapee.app/Contents/Resources/share/lensfun" \
          -DCMAKE_BUILD_TYPE=Release \
          -DOpenMP_C_FLAGS=-fopenmp=libomp \
          -DOpenMP_CXX_FLAGS=-fopenmp=libomp \
          -DOpenMP_C_LIB_NAMES="libomp" \
          -DOpenMP_CXX_LIB_NAMES="libomp" \
          -DOpenMP_libomp_LIBRARY="/opt/homebrew/lib/libomp.dylib" \
          -DOpenMP_CXX_FLAGS="-Wno-pass-failed -Wno-deprecated-register -Xpreprocessor -fopenmp /opt/homebrew/lib/libomp.dylib -I/opt/homebrew/include" \
          -DOpenMP_CXX_LIB_NAMES="libomp" \
          -DOpenMP_C_FLAGS="-Wno-pass-failed -Wno-deprecated-register -Xpreprocessor -fopenmp /opt/homebrew/lib/libomp.dylib -I/opt/homebrew/include" \
          -DCMAKE_VERBOSE_MAKEFILE:BOOL=OFF \
          -DCMAKE_EXE_LINKER_FLAGS="-L/opt/homebrew/Cellar/libffi/3.3_2/lib -L/opt/homebrew/lib" \
          -DCMAKE_AR="/opt/homebrew/Cellar/llvm/11.0.1/bin/llvm-ar" \
          -DCMAKE_RANLIB="/opt/homebrew/Cellar/llvm/11.0.1/bin/llvm-ranlib"
