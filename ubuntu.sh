#!/bin/sh

apt update && apt upgrade -y  
apt install -y xfce4 xfce4-goodies tightvncserver xrdp dbus-x11
cat > .vnc/xstartup << EOF
#!/bin/sh

unset SESSION_MANAGER  
unset DBUS_SESSION_BUS_ADDRESS  
xrdb $HOME/.Xresources  
startxfce4 & 
EOF
chmod +x .vnc/xstartup
