# !/bin/bash

oc process -f /Users/qujinping/minishift/app/dockerbc_templ.yaml -v=APP_NAME=user-db -vAPP_SOURCE_REPOSITORY_URL=https://github.com/qujinping/user -vAPP_SOURCE_CONTEXT_DIR=docker/user-db/ | oc create -f -
