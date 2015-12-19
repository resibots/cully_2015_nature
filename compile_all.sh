#!/bin/bash
mkdir -p limbo/exp
mkdir install
cd limbo/exp
ln -s ../../ITE
cd ../../sferes2/modules
ln -s ../../robdyn/sferes/robdyn
cd ../exp
ln -s ../../map_elites_hexapod

cd ../../

echo "robdyn \n" >> sferes2/modules.conf

cd robdyn

INSTALL="$(realpath ../install)"
echo "Install directory: ${INSTALL}"

./waf configure --prefix=$INSTALL
./waf
./waf install

cd ../limbo
./waf configure --robdyn=$INSTALL
./waf --exp ITE

cd ../sferes2
./waf configure --cpp11=yes --robdyn=$INSTALL
./waf
./waf --exp map_elites_hexapod

cd ..
