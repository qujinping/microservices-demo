# !/bin/bash

oc process -f /Users/qujinping/minishift/app/gobc_templ.yaml -v=APP_NAME=payment -vAPP_SOURCE_REPOSITORY_URL=https://github.com/qujinping/payment -vAPP_BUILDER_IMAGE=builder-go-16-centos7:latest | oc create -f -
