# FROM debian:latest
FROM debian:12.8

WORKDIR /root

RUN apt update && apt upgrade

RUN apt install -y \
                curl \
                zsh \
                wget \
                git \
                neofetch \
                build-essential \
                ca-certificates \
                lsb-release \
                software-properties-common

RUN apt install -y \
                nodejs \
                npm \
                python3 \
                python3-pip \
                python3-dev

RUN apt install -y \
    g++ \
    make \
    gdb \
    valgrind \
    cmake \
    clangd \
    cppcheck \
    ninja-build gettext \
    autoconf \
    automake \
    pkg-config \
    unzip \
    libtool \
    libtool-bin \
    libssl-dev \
    libffi-dev

RUN apt install -y \
            golang \
            gopls

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN git clone https://github.com/Makefolder/Makefolder /root/Makefolder

# SETUP .zshrc
RUN rm -f /root/.zshrc
RUN cp /root/Makefolder/.zshrc /root

# SETUP neovim
RUN mkdir /root/.config
RUN cp -r /root/Makefolder/nvim /root/.config/

COPY install_neovim.sh .
RUN chmod +x install_neovim.sh

CMD ["zsh"]
