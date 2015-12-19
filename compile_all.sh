#!/bin/bash
mkdir -p limbo/exp
mkdir install
ln -s ITE limbo/exp/ITE
ln -s robdyn/sferes/robdyn sferes2/modules/robdyn
ln -s map_elites_hexapod sferes2/exp/map_elites_hexapod

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
