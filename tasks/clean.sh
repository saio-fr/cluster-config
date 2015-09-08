#! /bin/bash

# load env config
if [ -f "tasks/config.sh" ]; then
    source "tasks/config.sh"
fi

# set client context
$KUBERNETES_CMD config set-context ${ENV} --namespace=${ENV} --cluster=saio-fr_kubernetes --user=saio-fr_kubernetes-basic-auth
# use context
$KUBERNETES_CMD config use-context ${ENV}

# delete services
$KUBERNETES_CMD delete services --all

# delete endpoints
$KUBERNETES_CMD delete endpoints --all

# delete rc
$KUBERNETES_CMD delete rc --all
