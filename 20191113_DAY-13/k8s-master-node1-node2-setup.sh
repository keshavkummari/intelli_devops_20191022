#!/bin/bash

#1. master :
sudo apt-get update -y 
sudo apt-get install curl wget unzip vim elinks -y 
sudo apt-get update -y 

# Docker Repository:
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#Add Kubernetes GPG Key and Repository in all 3 server :

sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

sudo cat << EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

# Install Docker, Kubeadm, Kubelet, and Kubectl on all three servers.

sudo apt-get update
sudo apt-get install -y docker-ce=18.06.1~ce~3-0~ubuntu kubelet=1.12.2-00 kubeadm=1.12.2-00 kubectl=1.12.2-00
sudo apt-mark hold docker-ce kubelet kubeadm kubectl

# kubeadm join 172.31.25.235:6443 --token vnbgfj.3ylf6gdkpbm6dt87 --discovery-token-ca-cert-hash sha256:a85a57a660ba4113a15ab815632f745f8e78b5cf30ff4921723841dccaca8216


