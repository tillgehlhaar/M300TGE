sudo useradd -m -d /home/veeam/ -s /bin/bash veeam
sudo sed -i -e's/netzmask 255.255.255.0/255.255.240.0/' /etc/network/interfaces
sudo sed -i -e '$a gateway 172.16.16.39' -e '$a dns-nameservers 172.16.16.7 172.16.16.4' -e '$a dns-search workgroup' /etc/network/interfaces 
sudo cp /home/vagrant/sources.list /etc/apt/

sudo apt update
sudo apt-get install open-iscsi
sudo apt install multipath-tools
sudo systemctl restart multipathd
sudo apt-get install xfsprogs
sudo apt-get install open-vm-tools
sudo apt-get install htop

sudo apt-get install ufw -y
sudo apt-get install fail2ban -y
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw allow 22
sudo ufw allow 80
sudo ufw enable

