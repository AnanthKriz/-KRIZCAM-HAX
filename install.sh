#!/bin/bash
# Install dependencies for KRIZCAM-HAX
pkg update -y || sudo apt update -y
pkg install php wget curl openssh git -y || sudo apt install php wget curl openssh git -y
echo "[*] Dependencies installed."
