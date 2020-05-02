#Author: Ahmad Musa

echo "Updating your OS packages"
sudo apt-get update -y
echo "Installing/Updating your OS python-devel"
sudo apt-get install python-dev -y || true
sudo apt-get install python3-dev -y || true
sudo apt-get install libpython3-dev -y || true
sudo apt-get install libpython3.4-dev -y || true
sudo apt-get install libpython3.5-dev -y || true
echo "Adding stack user"
sudo useradd -s /bin/bash -d /opt/stack -m stack
sudo apt-get install sudo -y || true
sudo bash -c 'echo "stack ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers'
echo "Switching to stack user"
sudo su stack
# you will be switched to stack user here
echo "Configuring git and python virtualenv"
sudo apt-get install git -y || true
sudo apt-get install python-pip -y || true
sudo pip install virtualenv

echo "your OS is ready to clone the devstack"
echo "execute the following command : git clone https://opendev.org/openstack/devstack "
echo "then you need to follow devstack steps :) "
echo "done"
