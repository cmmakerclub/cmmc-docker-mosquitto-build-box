#!/bin/bash


#pushd /src/c-ares-1.10.0
#./configure
#make -j5
#make install
#popd
#
#pushd /src/libwebsockets-2.1.0
#mkdir build && cd build
#cmake ..
#make -j5
#make install
#ldconfig
#popd


pushd /mosquitto
ldconfig
#mkdir build
#pushd build
#cmake .. -DWITH_WEBSOCKETS=ON
sed -i 's/WITH_WEBSOCKETS:=no/WITH_WEBSOCKETS:=yes/' config.mk 
make -j5
make install
popd
popd



