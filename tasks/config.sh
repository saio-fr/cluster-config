#! /bin/bash

export KUBERNETES_VERSION=1.0.3
export KUBERNETES_SERVER=https://130.211.65.27
export KUBERNETES_USERNAME=admin
export KUBERNETES_PASSWORD=i3bWpYdEM1uf3v5i
export KUBERNETES_KUBECTL=~/kubernetes/cluster/kubectl.sh
export KUBERNETES_CMD="$KUBERNETES_KUBECTL --server=$KUBERNETES_SERVER --username=$KUBERNETES_USERNAME --password=$KUBERNETES_PASSWORD"

# install kubernetes client
if [ ! -d ~/kubernetes ]; then
  mkdir ~/kubernetes
  curl -L https://github.com/kubernetes/kubernetes/releases/download/v$KUBERNETES_VERSION/kubernetes.tar.gz > /tmp/kubernetes.tar.gz
  tar xzvf /tmp/kubernetes.tar.gz -C ~
  rm -f /tmp/kubernetes.tar.gz
  chmod +x ~/kubernetes/cluster/kubectl.sh
fi
