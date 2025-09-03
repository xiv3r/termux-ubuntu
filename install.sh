#!/bin/bash

pkg upgrade -y 

# Shortcut login
cat >> $PREFIX/etc/bash.bashrc << EOF
termux-wake-lock
clear
proot-distro login ubuntu
EOF
chmod +x $PREFIX/bin/ubuntu

# Manual Login
cat > $PREFIX/bin/ubuntu << EOF
pd sh ubuntu
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

pkg install -y proot-distro
proot-distro install ubuntu
proot-distro login ubuntu
