#!/bin/sh

which ansible
if [ $? -ne 0 ]; then
  # installed packages update
  apt-get update -y
  apt-get upgrade -y

  # install ansible
  apt-get install software-properties-common -y
  apt-add-repository ppa:ansible/ansible -y
  apt-get update -y
  apt-get install ansible -y
else
  echo "installed ansible."
fi

