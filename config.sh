##Install Mongodb-3.6##

UNAME=$(uname | tr "[:upper:]" "[:lower:]")
echo '\033[0;32m'$UNAME

echo '\033[0;31m'"Mongodb Installation 3.6 started"'\033[0m' 

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5

echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/3.6 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list

sudo apt-get update -y &&

sudo apt-get install -y mongodb-org=3.6.4 mongodb-org-server=3.6.4 mongodb-org-shell=3.6.4 mongodb-org-mongos=3.6.4 mongodb-org-tools=3.6.4  &&

sudo service mongod start &&

echo '\033[0;32m'"Installation Completed"'\033[0m'




