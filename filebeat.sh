#!/bin/bash
curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-8.7.0-linux-x86_64.tar.gz
tar xzvf filebeat-8.7.0-linux-x86_64.tar.gz
pid=$(ps -ef | grep filebeat | awk '{print $2}' | head -1)
kill -9 $pid 
sleep 3 
nohup /opt/filebeat/filebeat &
ps -ef | grep -i filebeat
