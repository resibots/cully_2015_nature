#!/bin/bash

git checkout -- .
git clean -df

cd limbo
git checkout -- .
git clean -df
cd ..

cd ITE
git checkout -- .
git clean -df
cd ..

cd robdyn
git checkout -- .
git clean -df
cd ..

cd sferes2
git checkout -- .
git clean -df
cd ..

cd map_elites_hexapod
git checkout -- .
git clean -df
cd ..
