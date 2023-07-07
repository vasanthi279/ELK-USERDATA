#!/bin/bash
yum update -y
#debugging 
yum install telnet nc net-tools httpd -y
#ssm 
yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
systemctl start amazon-ssm-agent
systemctl status amazon-ssm-agent
cd /opt
curl -O https://artifacts.elastic.co/downloads/kibana/kibana-8.7.0-linux-x86_64.tar.gz 
tar -xzf kibana-8.7.0-linux-x86_64.tar.gz
rm -f kibana-8.7.0-linux-x86_64.tar.gz
ln -s kibana-8.7.0 kibana
chown -R ec2-user:ec2-user kibana* 
su - ec2-user
nohup /opt/kibana/bin/kibana & 
