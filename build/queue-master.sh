# !/bin/bash

oc process -f /Users/qujinping/minishift/cicd/app/javabc_templ.yaml -v=APP_NAME=queue-master -vAPP_SOURCE_REPOSITORY_URL=https://github.com/qujinping/queue-master -vAPP_BUILDER_IMAGE=builder-openjdk-18-centos7:latest | oc create -f -
