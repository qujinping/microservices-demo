# !/bin/bash

oc create configmap edge-router --from-file=./deploy_prod/traefik.toml
