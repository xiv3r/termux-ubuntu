#!/bin/bash

# Install dependencies 
apt install -y neofetch gnome-shell gnome-terminal gnome-tweaks gnome-shell-extensions gnome-shell-extension-ubuntu-dock nautilus nano gedit dbus-x11 tigervnc-standalone-server

# Vnv startup
mkdir -p .vnc
cat > .vnc/xstartup << EOF
#!/bin/bash

export XDG_CURRENT_DESKTOP="GNOME"
service dbus start 
gnome-shell --x11
for file in $(find /usr -type f -iname "login1"); do rm -rf $file 
done
EOF
chmod +x .vnc/xstartup

# Startup
sed -i '/neofetch/d' .bashrc
cat >> .bashrc << EOF
neofetch
EOF
