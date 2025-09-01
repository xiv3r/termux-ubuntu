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
wget -qO- https://raw.githubusercontent.com/xiv3r/termux-ubuntu/refs/heads/main/ubuntu.sh | sh
```

# Configure VNC
```
vncserver
```
```
vncpasswd
```

# Run VNC Server
```
vncserver -kill :1
```
```
vncserver
```

### Login
```
pd sh ubuntu
```
### Logout 
```
exit
```
### Uninstall 
```
pd rm ubuntu
```
