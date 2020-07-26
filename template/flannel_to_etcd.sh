#!/bin/bash
##############################################################
# File Name: template/flannel_to_etcd.sh
# Version: V1.0
# Author: JZL
# Organization: 353553339@qq.com
# Created Time : 2020-07-25 17:41:11
# Description:
##############################################################

./etcdctl set /coreos.com/network/config '{"Network": "172.7.0.0/16", "Backend": {"Type": "host-gw"}}'
