#!/bin/bash

# Check if script was run as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

apt update -y && apt upgrade -y

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
	python3 \
	python3-pip \
	ftp \
	steghide \
	ghex \
	eog \
	ruby \
	build-essential \
	libcurl4-openssl-dev \
	libxml2 \
	libxml2-dev \
	libxslt1-dev \
	ruby-dev \
	libgmp-dev \
	zlib1g-dev \
	wireshark \
	binwalk \
	z3 \
	exiftool \
	minimodem \
	ffmpeg
	
# Install msfconsole
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall

# Install exploitdb
git clone https://github.com/offensive-security/exploitdb.git /opt/exploitdb
ln -sf /opt/exploitdb/searchsploit /usr/local/bin/searchsploit

# Clone git repos
git clone --depth 1 https://github.com/danielmiessler/SecLists.git /opt/seclists
git clone https://github.com/carlospolop/PEASS-ng.git /opt/peas
git clone https://github.com/pentestmonkey/php-reverse-shell.git /opt/php-reverse-shell
