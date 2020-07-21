#!/bin/bash
##############################################################
# File Name: template/kube-proxy_conf.sh
# Version: V1.0
# Author: JZL
# Organization: 353553339@qq.com
# Created Time : 2020-07-20 11:04:21
# Description:
##############################################################

# 设置集群参数
kubectl config set-cluster myk8s \
  --certificate-authority=/opt/kubernetes/server/bin/cert/ca.pem \
  --embed-certs=true \
  --server=https://10.4.7.10:7443 \
  --kubeconfig=kube-proxy.kubeconfig
  
# 设置客户端认证参数
kubectl config set-credentials kube-proxy \
  --client-certificate=/opt/kubernetes/server/bin/cert/kube-proxy-client.pem \
  --client-key=/opt/kubernetes/server/bin/cert/kube-proxy-client-key.pem \
  --embed-certs=true \
  --kubeconfig=kube-proxy.kubeconfig
  
# 设置上下文参数
kubectl config set-context myk8s-context \
  --cluster=myk8s \
  --user=kube-proxy \
  --kubeconfig=kube-proxy.kubeconfig
  
# 设置默认上下文
kubectl config use-context myk8s-context --kubeconfig=kube-proxy.kubeconfig
