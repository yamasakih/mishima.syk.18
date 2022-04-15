FROM ubuntu:latest

RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    gcc-multilib \
    curl \
    software-properties-common \
    zsh \
    git

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable
ENV PATH $PATH:$HOME/.cargo/bin
