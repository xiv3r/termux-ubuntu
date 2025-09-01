#!/bin/bash

pkg upgrade -y  
pkg install -y proot-distro  
proot-distro install ubuntu
proot-distro login ubuntu
apt update && apt upgrade -y  
apt install -y xfce4 xfce4-goodies  
apt install -y tightvncserver
cat > $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/root/.vnc/xstartup  << EOF
#!/bin/sh

unset SESSION_MANAGER  
unset DBUS_SESSION_BUS_ADDRESS  
xrdb $HOME/.Xresources  
startxfce4 & 
EOF
chmod +x $PREFIX/var/lib/proot-distro/installed-rootfs/ubuntu/.vnc/xstartup
