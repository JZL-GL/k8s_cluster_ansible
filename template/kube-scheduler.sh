#!/bin/bash
##############################################################
# File Name: template/kube-scheduler.sh
# Version: V1.0
# Author: JZL
# Organization: 353553339@qq.com
# Created Time : 2020-07-15 20:58:42
# Description:
##############################################################

./kube-scheduler \
  --leader-elect  \
  --log-dir /data/logs/kubernetes/kube-scheduler \
  --master http://127.0.0.1:8080 \
  --v 2
