#!/bin/bash
USERNAME=user

	#create user and folder, copy ssh key, start ssh server 

touch /var/log/log.log
mkdir /home/"$USERNAME" && mkdir /home/"$USERNAME"/.ssh
useradd "$USERNAME" -d /home/"$USERNAME"
chown "$USERNAME":"$USERNAME" /home/"$USERNAME" -R

cat /opt/ssh_key > /home/"$USERNAME"/.ssh/authorized_keys
/etc/init.d/ssh start

tail -f /var/log/log.log
