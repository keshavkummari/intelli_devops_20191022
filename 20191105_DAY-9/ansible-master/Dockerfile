# Download or Use Base Image or Core Image 
FROM ubuntu:latest 

# Updating the Package Repository
RUN apt-get update && apt-get upgrade -y 

# Download, Install and COnfigure utility softwares
RUN apt-get install vim curl elinks wget unzip -y 

# Add the Ansible Repository
#RUN apt-add-repository ppa:ansible/ansible

# Updating the Package Repository
RUN apt-get update -y 

# Download, Install and Configure Ansible software
RUN apt-get install ansible -y 

# Generate SSH Keys 
RUN ssh-keygen 

