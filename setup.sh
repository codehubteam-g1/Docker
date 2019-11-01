sudo apt update
sudo apt install git

cd ..

#git clone https://github.com/rappi-clone/docker.git
git clone https://github.com/rappi-clone/clients-front.git
git clone https://github.com/rappi-clone/users.git
git clone https://github.com/rappi-clone/orders.git
git clone https://github.com/rappi-clone/stores.git
git clone https://github.com/rappi-clone/shopping-carts.git

#Docker for debian installation
sudo apt-get install \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

sudo apt update
sudo apt install docker-ce



