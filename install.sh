#!/bin/bash

# Shortcut login
sed -i '/termux-wake-lock/d' $PREFIX/etc/bash.bashrc
sed -i '/clear/d' $PREFIX/etc/bash.bashrc
sed -i '/proot-distro login ubuntu/d' $PREFIX/etc/bash.bashrc
cat >> $PREFIX/etc/bash.bashrc << EOF
termux-wake-lock
clear
proot-distro login ubuntu
EOF
chmod +x $PREFIX/bin/ubuntu

# Manual Login
cat > $PREFIX/bin/ubuntu << EOF
proot-distro login ubuntu
EOF
chmod +x $PREFIX/bin/ubuntu

# Uninstaller 
cat > $PREFIX/bin/uninstall-ubuntu << EOF
#!/bin/sh

proot-distro remove ubuntu
sed -i '/clear/d' $PREFIX/etc/bash.bashrc
sed -i '/termux-wake-lock/d' $PREFIX/etc/bash.bashrc
sed -i '/proot-distro login ubuntu/d' $PREFIX/etc/bash.bashrc
rm -f $PREFIX/bin/ubuntu
rm -f $PREFIX/bin/uninstall-ubuntu
EOF

pkg upgrade -y
pkg install -y proot-distro
proot-distro install ubuntu
sleep 5
proot-distro login ubuntu
