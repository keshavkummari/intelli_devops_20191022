#!/bin/bash 

# Update the Repository
sudo apt-get update -y 

# Download, Install & Configure Utility Softwares
sudo apt-get install vim curl unzip wget  -y 
sudo apt-get install apt-transport-https -y 

# Install Docker on Master and Nodes
sudo apt-get install docker.io -y

# Configure Kubernetes Package Repository on Master and Worker Nodes 
sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add 

# Add the Repository 
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"

# Update the Repository
sudo apt-get update -y 

# Install Kubeadm on Master and Worker Nodes 
sudo apt-get install kubeadm -y 

kubectl create -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml


