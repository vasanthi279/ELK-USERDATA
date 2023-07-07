#!/bin/bash
yum update -y
#debugging 
yum install telnet nc net-tools httpd -y
#ssm 
yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
systemctl start amazon-ssm-agent
systemctl status amazon-ssm-agent
#es setup
cd /opt
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.7.0-linux-x86_64.tar.gz
tar -xzf elasticsearch-8.7.0-linux-x86_64.tar.gz
rm -f elasticsearch-8.7.0-linux-x86_64.tar.gz
ln -s /opt/elasticsearch-8.7.0 elasticsearch
chown -R ec2-user:ec2-user elastic* 
su - ec2-user
whoami
nohup /opt/elasticsearch/bin/elasticsearch &

