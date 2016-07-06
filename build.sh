!#/bin/bash
sudo docker build -t dockerfile/bind9 .

docker run --name bind9 -p 53:53 -p 223:22 -d dockerfile/bind9
