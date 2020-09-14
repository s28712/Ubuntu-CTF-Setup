# Ubuntu-Kali

mkdir ~/.ssh/multipassKey
sudo cp /var/snap/multipass/common/data/multipassd/ssh-keys/id_rsa ~/.ssh/multipassKey/id_rsa
sudo chown <user> -R ~/.ssh/multipassKey/
multipass start <instance_name>
ssh -X -i ~/.ssh/multipassKey/id_rsa ubuntu@<IP>
