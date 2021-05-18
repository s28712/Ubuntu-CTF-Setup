echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
apt-get install -y
