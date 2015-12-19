#!/bin/bash
mkdir -p limbo/exp
mkdir install
cd limbo/exp
ln -s ../../ITE
cd ../../sferes2/modules
ln -s robdyn/sferes/robdyn
cd ../exp
ln -s ../../../../map_elites_hexapod

cd ../../../../

echo "robdyn \n" >> sferes2/modules.conf

cd robdyn
./waf configure --prefix=../install
./waf
./waf install

cd ../limbo
./waf configure
./waf --exp ITE --robdyn=../install

cd ../sferes2
./waf configure --cpp11=yes --robdyn=../install
./waf --exp map_elites_hexapod

cd ..
