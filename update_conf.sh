#!/bin/bash

if [ ! -d /opt/zabbix ]; then
  sudo mkdir -p /opt/zabbix &&
  sudo cp ./scripts/* /opt/zabbix/
  sudo chown -R zabbix:zabbix /opt/zabbix
fi

sudo echo "AllowKey=system.run[sh /opt/zabbix/temp_cpu.sh,*]" >> /etc/zabbix/zabbix_agent2.conf
