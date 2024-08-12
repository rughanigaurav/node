# node

Install docker and docker-composer in ubuntu and Create a sample node project in ubuntu

#1) Install Docker in ubuntu

```bash
sudo apt-get update

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

sudo mkdir -p /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

sudo docker run hello-world
```

#2) install docker-compose in ubuntu

```bash
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version
```

#3) Remove sudo from Docker

```bash
sudo groupadd docker

sudo usermod -aG docker $USER

newgrp docker

docker run hello-world
```

> **_'You successfully Installed the Docker!'_**

#4) Clone The Repository with HTTPS

```bash
---> Use Below Command for clone

$ project Dir > git clone https://github.com/rughanigaurav/node.git
```

#6) After that start docker images and run the project with below command

```bash

$ project Dir > docker-compose up --build

```

---> your project will be run on localhost:3000
