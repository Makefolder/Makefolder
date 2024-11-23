FROM debian:latest

WORKDIR /root

RUN apt update && apt upgrade

RUN apt install -y \
                curl \
                zsh \
                wget \
                make \
                gcc \
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
    libssl-dev \
    libffi-dev

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN apt install -y neovim

RUN git clone https://github.com/Makefolder/Makefolder /root/Makefolder

# SETUP .zshrc
RUN rm -f /root/.zshrc
RUN cp /root/Makefolder/.zshrc /root

# SETUP neovim
RUN mkdir /root/.config
RUN cp -r /root/Makefolder/nvim /root/.config/
CMD ["zsh"]
