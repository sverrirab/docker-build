# docker-build
Dockerfile for frequently used build tools
Supports c/c++, Java7, Python2

You can start it directly, download files and compile within the container 
using:
```
docker run -it sverrirab/build bash
```
The output of the build will be thrown away if you throw away the container.

# Simple build workflow

As an example there is a mybuild folder in this repository.  You can 
simply from the root directory of this repository:

```
docker run -it -v $PWD/mybuild:/build sverrirab/build ./build.sh
```

It will compile the c++ code and leave `a.out` in the mybuild folder.

