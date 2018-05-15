#!/bin/bash

read -p "Enter Host Ip: " host
name="blackflux-test"
username="medcy_gps";

eval $(ssh-agent) &&

ssh-add /home/meena/.ssh/$name &&

scp config.sh $username@$host:/home/medcy_gps/config.sh &&

ssh -i ~/.ssh/blackflux-test $username@$host  "sh ~/config.sh" &&

ssh -i ~/.ssh/blackflux-test $username@$host  "rm -f ~/config.sh" &&

ssh-agent -k


