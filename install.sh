#!/bin/bash

apt update && apt install -y git

if ! command -v rustc &> /dev/null; then
            curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
            source $HOME/.cargo/env
        else
            rustup update
            source $HOME/.cargo/env
        fi

source $HOME/.cargo/env

curl -sSL https://raw.githubusercontent.com/soundnesslabs/soundness-layer/main/soundnessup/install | bash
source ~/.bashrc


sudo apt update
sudo apt install build-essential curl git cmake -y
