cd /etc/ssl/

sudo openssl req -newkey rsa:2048 -new -x509 -days 365 -nodes -out mongodb-cert.crt -keyout mongodb-cert.key &&
sudo bash -c 'cat mongodb-cert.key mongodb-cert.crt > mongodb.pem' &&
sudo service mongod stop &&
sudo apt-get install tmux &&
tmux new-session -d -s mongo1

tmux send-keys 'sudo mongod --config /etc/mongod.conf --sslMode requireSSL --sslPEMKeyFile /etc/ssl/mongodb.pem' C-m 
#tmux detach -d mongo 
echo "Mongo started"
