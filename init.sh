multipass launch -n reptilia -c 2 -d 20G -m 4G
multipass exec reptilia -- sudo apt update -y
multipass exec reptilia -- sudo apt install net-tools dialog apt-utils -y
echo 'debconf debconf/frontend select Noninteractive' | sudo debconf-set-selections
sudo apt-get install -y
