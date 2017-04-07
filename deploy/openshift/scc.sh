# !/bin/bash

oc create -f /Users/qujinping/minishift/deploy_prod/scc_xiaomi.yaml
oc adm policy add-scc-to-group xiaomi system:serviceaccounts:sock
