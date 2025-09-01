#!/bin/bash

pkg upgrade -y  
pkg install -y proot-distro  
proot-distro install ubuntu
proot-distro login ubuntu
