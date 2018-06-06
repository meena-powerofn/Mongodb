cd /etc/ssl/

sudo openssl req -newkey rsa:2048 -new -x509 -days 365 -nodes -out mongodb-cert.crt -keyout mongodb-cert.key &&
sudo bash -c 'cat mongodb-cert.key mongodb-cert.crt > mongodb.pem' &&
sudo service mongod stop &&
sudo apt-get install tmux &&
tmux new-session -d -s mongo1

tmux send-keys 'sudo mongod --config /etc/mongod.conf --sslMode requireSSL --sslPEMKeyFile /etc/ssl/mongodb.pem' C-m 
#tmux detach -d mongo 
echo "Mongo started"



#mongo --host 35.200.225.170 --ssl --sslCAFile /etc/ssl/mongodb.pem
#mongo --host 35.200.139.28 -u "admin" -p "6CKRdB7GWVZdBV69" --authenticationDatabase "admin" --ssl --sslCAFile /etc/ssl/mongodb.pem 
