#!/bin/bash

pkg upgrade -y 

# Shortcut login
cat > $PREFIX/bin/ubuntu << EOF
#!/bin/sh
termux-wake-lock
proot-distro login ubuntu
EOF
chmod +x $PREFIX/bin/ubuntu

# Uninstaller 
cat > $PREFIX/bin/uninstall-ubuntu << EOF
#!/bin/sh
proot-distro remove ubuntu
EOF

pkg install -y proot-distro
proot-distro install ubuntu
proot-distro login ubuntu
