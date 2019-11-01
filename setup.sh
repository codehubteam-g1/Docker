cd ..
sudo apt update


#git clone https://github.com/rappi-clone/docker.git
git clone https://github.com/rappi-clone/clients-front.git
git clone https://github.com/rappi-clone/users.git
git clone https://github.com/rappi-clone/orders.git
git clone https://github.com/rappi-clone/stores.git
git clone https://github.com/rappi-clone/shopping-carts.git

#Docker for Ubuntu installation
echo yes | sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

echo yes | sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt update
echo yes | sudo apt install docker-ce
sudo docker run hello-world

#Install docker-compose for linux
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

#Starts docker-compose
cd docker
sudo docker-compose up


