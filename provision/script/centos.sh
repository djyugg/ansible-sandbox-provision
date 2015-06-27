#!/bin/sh

which ansible
if [ $? -ne 0 ]; then
  # installed packages update
  yum update -y

  # install ansible
  yum install epel-release -y
  yum install ansible -y
else
  echo "installed ansible."
fi
