# MakeDeb

Since I use (here's joke comin') "MAKEbook", sometimes, I need
to deal with linux.
So this is my "virtual machine" docker image I use.

Here I use `debian:latest`. In the image, I install my
neovim and zshrc configurations.

## Docker build

Build the image with the following command:

```bash
docker build -t makedeb .
```
