# What is Python?

Python is an interpreted, interactive, object-oriented, open-source programming language. It incorporates modules, exceptions, dynamic typing, very high level dynamic data types, and classes. Python combines remarkable power with very clear syntax. It has interfaces to many system calls and libraries, as well as to various window systems, and is extensible in C or C++. It is also usable as an extension language for applications that need a programmable interface. Finally, Python is portable: it runs on many Unix variants, on the Mac, and on Windows 2000 and later.

wikipedia.org/wiki/Python_(programming_language)

## How to run image

```shell
git clone https://github.com/Dofamin/Python3-Docker.git /srv/Python3-Docker/

docker build /srv/Python3-Docker/ --tag python3_docker 

docker rm --force Python3_Docker

docker create \
  --name=Python3_Docker \
  --restart unless-stopped \
  --memory="100m" \
  python3_docker:latest

docker start Python3_Docker

```

Or just pull from GitHub

```shell

docker pull ghcr.io/dofamin/python3-docker:main

docker rm --force Python3_Docker

docker create \
  --name=Python3_Docker \
  --restart unless-stopped \
  --memory="100m" \
  python3_docker:latest

docker start Python3_Docker

```

