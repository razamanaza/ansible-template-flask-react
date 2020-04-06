#!/bin/bash
os=`hostnamectl |grep 'Operating System' | cut -d':' -f2 | cut -d' ' -f2`
if [ $os != 'Ubuntu' ]
  then
  echo 'Wrong OS. Exiting'
  exit
fi

sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible

