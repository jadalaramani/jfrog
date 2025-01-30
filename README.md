# jfrog ![JFrog Logo](https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/Jfrog_logo.svg/1200px-Jfrog_logo.svg.png)



docker build -t ramanijadala/jfrog:latest . 
docker run -itd --name jfrog -p 8081:8081 ramanijadala/jfrog:latest

# Docker_installations on Ubuntu

sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

sudo apt install -y docker-ce docker-ce-cli containerd.io

docker --version


