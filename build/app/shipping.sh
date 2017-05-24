# !/bin/bash

oc process -f /Users/qujinping/minishift/app/javabc_templ.yaml -v=APP_NAME=shipping -vAPP_SOURCE_REPOSITORY_URL=https://github.com/qujinping/shipping -vAPP_BUILDER_IMAGE=builder-openjdk-18-centos7:latest | oc create -f -
