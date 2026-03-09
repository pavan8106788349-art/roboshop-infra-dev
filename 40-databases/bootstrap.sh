#!/bin/bash

component=$1
dnf install ansible -y

cd /home/ec2-user
git clone https://github.com/pavan8106788349-art/ansible-roboshop-roles-tf.git 

cd ansible-roboshop-roles-tf
git pull
ansible-playbook -e component=$component -e env=$environment roboshop.yaml
