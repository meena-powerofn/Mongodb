#!/bin/bash

read -p "Enter Host Ip: " host
name="blackflux-test"
username="medcy_gps";

eval $(ssh-agent) &&

ssh-add /home/meena/.ssh/$name &&

scp ssl_cert.sh $username@$host:/home/medcy_gps/ssl_cert.sh &&

ssh -i ~/.ssh/blackflux-test $username@$host  "sh ~/ssl_cert.sh" &&


ssh-agent -k

