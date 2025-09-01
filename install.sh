#!/bin/bash

pkg upgrade -y 

# Shortcut 
cat > $PREFIX/bin/ubuntu << EOF
proot-distro login ubuntu
EOF
chmod +x $PREFIX/bin/ubuntu

pkg install -y proot-distro
proot-distro install ubuntu
proot-distro login ubuntu
