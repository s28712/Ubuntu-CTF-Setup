#!/bin/bash

# Check if script was run as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

# Install apt packages
apt install -y netcat \
	git \
	gdb \
	nmap \
	neofetch \
	tmux \
	openvpn \
	firefox \
	net-tools \
	nikto \
	smbclient \
	speedtest-cli \
	python3 \
	python3-pip \
	ftp \
	steghide \
	ghex \
	eog \
	ruby

# Install exploitdb
git clone https://github.com/offensive-security/exploitdb.git /opt/exploitdb
ln -sf /opt/exploitdb/searchsploit /usr/local/bin/searchsploit

# Install wpscan
gem install wpscan

# Clone git repos
git clone https://github.com/danielmiessler/SecLists.git /opt/seclists
git clone https://github.com/PowerShellMafia/PowerSploit.git /opt/powersploit
git clone https://github.com/EmpireProject/Empire.git /opt/Empire
git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git /opt/peas
git clone https://github.com/pentestmonkey/php-reverse-shell.git /opt/php-reverse-shell

# pip3 installs
pip3 install pwntools

# Change .bashrc
echo "neofetch" >> /home/ubuntu/.bashrc
source /home/ubuntu/.bashrc
