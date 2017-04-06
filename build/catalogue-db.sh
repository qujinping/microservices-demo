# !/bin/bash

oc process -f /Users/qujinping/minishift/cicd/app/dockerbc_templ.yaml -v=APP_NAME=catalogue-db -vAPP_SOURCE_REPOSITORY_URL=https://github.com/qujinping/catalogue -vAPP_SOURCE_CONTEXT_DIR=docker/catalogue-db/ | oc create -f -
