#!/bin/bash -e

mkdir -p /target/home/p/.config/autostart
chmod 777 -R /target/home/p/.config
echo '[Desktop Entry]
Type=Application
Exec=gnome-terminal
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
' > /target/home/p/.config/autostart/install.desktop
