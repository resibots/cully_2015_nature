# Robots that can adapt like animals

**WARNING** This repository is for archival-purpose only. A more up-to-date implementation of IT&E as described in Cully et al., 2015 is available here: https://github.com/resibots/ite_v2


#### meta-repo for code for the experiments published in Cully et al. (2015), Nature.

Full reference:
Cully, Antoine, Jeff Clune, Danesh Tarapore, and Jean-Baptiste Mouret. "Robots that can adapt like animals." Nature 521, no. 7553 (2015): 503-507.

- Author-generated [[pdf]](http://www.isir.upmc.fr/files/2015ACLI3468.pdf)
- Nature version (paywall) [[html / pdf]](http://www.nature.com/nature/journal/v521/n7553/full/nature14422.html)

Video (click on it to play):

[![Robots that can adapt like animals](http://img.youtube.com/vi/T-c17RKh3uE/0.jpg)](https://www.youtube.com/watch?v=T-c17RKh3uE "Robots that can adapt like animals")

## How to use it

#### How to properly clone this repo

```
git clone --recursive https://github.com/resibots/cully_2015_nature.git
```

#### Dependencies

- [ODE]: Dynamics Engine
    - Make sure you have installed `ODE` by sources and using this [trick](https://github.com/resibots/robdyn/issues/3#issuecomment-148740769).
    - If you do not want to generate new MAP Elites archives, you can install `ODE` from [binaries](https://launchpad.net/ubuntu/+source/ode).
- [Boost]: C++ Template Libraries
- [Eigen]: Linear Algebra C++ Library
- [realpath]: `sudo apt-get install realpath`

#### How to easily compile everything

**Important:** Make sure you have installed all the dependencies of each repo. Otherwise the build will fail.

From the root of this repo run:

```
sh compile_all.sh
```

#### How to generate MAP-Elites archives

From the root of this repo run:

```
./sferes2/build/default/exp/map_elites_hexapod/hexa_duty_text
```

Typical runs take 10-15 days.

See [map_elites_hexapod](https://github.com/resibots/map_elites_hexapod) for more details.

#### How to run the ITE experiments

From the root of this repo run:

```
./limbo/build/exp/ITE/hexa_bomean_variant limbo/exp/ITE/archives/archive_file.dat
```

See [ITE](https://github.com/resibots/ITE) for more details.

#### How to easily clean everything

From the root of this repo run:

```
sh clear_all.sh
```


## LICENSE

[CeCILL]

[CeCILL]: http://www.cecill.info/index.en.html
[ODE]: http://ode.org/
[Boost]: http://www.boost.org
[Eigen]: http://eigen.tuxfamily.org/
[realpath]: http://manpages.ubuntu.com/manpages/jaunty/man1/realpath.1.html
