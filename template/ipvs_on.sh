#!/bin/bash
##############################################################
# File Name: template/ipvs_on.sh
# Version: V1.0
# Author: JZL
# Organization: 353553339@qq.com
# Created Time : 2020-07-20 11:52:36
# Description:
##############################################################

ipvs_mods_dir="/usr/lib/modules/$(uname -r)/kernel/net/netfilter/ipvs"
for i in $(ls $ipvs_mods_dir|grep -o "^[^.]*")
do
  /sbin/modinfo -F filename $i &>/dev/null
  if [ $? -eq 0 ];then
    /sbin/modprobe $i
  fi
done
