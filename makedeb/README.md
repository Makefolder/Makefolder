# MakeDeb

Since I use (here's joke comin') "MAKEbook", sometimes, I need
to deal with linux.
So this is my "virtual machine" docker image I use.

Here I use `debian:latest`. In the image, I install my
neovim and zshrc configurations.

## Docker build

To run the container use `run.sh` after building
your docker image and use `start.sh` after that.

Description of scripts

```bash
build.sh -- to build image
run.sh -- to run the image
start.sh -- to start container with terminal
delete.sh -- to delete image and container
install_neovim -- install neovim from source \
                  downloaded from github repository
```

To install neovim use `install_neovim.sh`
(gets copied into docker container) because `apt install neovim`
installs outdated version of neovim (v0.7.2). I don't know how to
fix it yet.
