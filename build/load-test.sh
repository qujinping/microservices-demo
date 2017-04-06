# !/bin/bash

oc process -f /Users/qujinping/minishift/cicd/app/pythonbc_templ.yaml -v=APP_NAME=load-test -vAPP_SOURCE_REPOSITORY_URL=https://github.com/qujinping/load-test -vAPP_BUILDER_IMAGE=builder-python-27-centos7:latest | oc create -f -
