#!/bin/bash

sudo apt install tigervnc-standalone-server tigervnc-common tigervnc-xorg-extension tigervnc-viewer -y
mkdir -p /home/ubuntu/.vnc
touch /home/ubuntu/.vnc/passwd
echo passwd | vncpasswd -f > ~/.vnc/passwd
chown -R ubuntu:ubuntu /home/ubuntu/.vnc
chmod 0600 /home/ubuntu/.vnc/passwd
