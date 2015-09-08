# Cluster configuration

### Warning

Theses scripts are not responsible for creating or deleting a kubernetes cluster (instances, disk, units...). Refer to kubernetes kube-up.sh for example & more informations.

We'll later include custom scripts to mount/unmount cluster. In theory this should never be done once a cluster is set up.

### Purpose

Quickly clean & start our cluster with default configuration & lastest images.

This will be useful if something bad happen :O


### How to use

Set environment variable (production or staging atm) & launch scipts.

```
export ENV=production
sh tasks/clean.sh
sh tasks/start.sh
```
