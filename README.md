# Requirements 
- [Termux](https://github.com/termux/termux-app/releases)
- [VNC](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)

# Auto Install
```
pkg update && pkg install -y wget && wget -qO- https://raw.githubusercontent.com/xiv3r/termux-ubuntu/refs/heads/main/install.sh | bash && pd sh ubuntu
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
