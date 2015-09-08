#! /bin/bash

# load env config
if [ -f "tasks/config.sh" ]; then
    source "tasks/config.sh"
fi

# create namespace
$KUBERNETES_CMD create -f config/$ENV/namespace/namespace.yml
# set client context
$KUBERNETES_CMD config set-context $ENV --namespace=$ENV --cluster=saio-fr_kubernetes --user=saio-fr_kubernetes-basic-auth
# use context
$KUBERNETES_CMD config use-context $ENV

# create services
for SERVICE in config/$ENV/services/*
do
  $KUBERNETES_CMD create -f $SERVICE
done

# create endpoints
for ENDPOINT in config/$ENV/endpoints/*
do
  $KUBERNETES_CMD create -f $ENDPOINT
done

# create rc
for CONTROLLER in config/$ENV/controllers/*
do
  $KUBERNETES_CMD create -f $CONTROLLER
done
