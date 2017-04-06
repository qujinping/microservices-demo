# !/bin/bash

oc process -f /Users/qujinping/minishift/cicd/app/dockerbc_templ.yaml -v=APP_NAME=edge-router -vAPP_SOURCE_REPOSITORY_URL=https://github.com/qujinping/edge-router -vAPP_SOURCE_CONTEXT_DIR=./ | oc create -f -
