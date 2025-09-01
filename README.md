# Requirements 
- [Termux](https://github.com/termux/termux-app/releases)
- [VNC](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)

# Auto Install
- Step 1
```
pkg update && pkg install -y wget && wget -qO- https://raw.githubusercontent.com/xiv3r/termux-ubuntu/refs/heads/main/install.sh | bash && pd sh ubuntu
```
- Step 2
```
apt update && apt install -y wget && wget -qO- https://raw.githubusercontent.com/xiv3r/termux-ubuntu/refs/heads/main/ubuntu.sh | sh
```

# Configure VNC
```
vncpasswd
```

# Run VNC Server
```
vncserver
```
- Open Real VNC and put the address `localhost:1` and your vnc password and connect.

### Login
```
ubuntu
```
### Logout 
```
exit
```
### Uninstall 
```
uninstall-ubuntu
```
