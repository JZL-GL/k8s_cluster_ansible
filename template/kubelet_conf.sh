#!/bin/bash
##############################################################
# File Name: template/kubelet_conf.sh
# Version: V1.0
# Author: JZL
# Organization: 353553339@qq.com
# Created Time : 2020-07-17 12:25:34
# Description:
##############################################################

# 设置集群参数
kubectl config set-cluster myk8s \
  --certificate-authority=/opt/kubernetes/server/bin/cert/ca.pem \
  --embed-certs=true \
  --server=https://10.4.7.10:7443 \
  --kubeconfig=kubelet.kubeconfig

# 设置客户端认证参数
kubectl config set-credentials k8s-node \
  --client-certificate=/opt/kubernetes/server/bin/cert/client.pem \
  --client-key=/opt/kubernetes/server/bin/cert/client-key.pem \
  --embed-certs=true \
  --kubeconfig=kubelet.kubeconfig

# 设置上下文参数
kubectl config set-context myk8s-context \
  --cluster=myk8s \
  --user=k8s-node \
  --kubeconfig=kubelet.kubeconfig

# 设置默认上下文
kubectl config use-context myk8s-context --kubeconfig=kubelet.kubeconfig

echo 111 > /root/1.txt
