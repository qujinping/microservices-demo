# !/bin/bash

oc process -f /Users/qujinping/minishift/app/nodejsbc_templ.yaml -v=APP_NAME=front-end -vAPP_SOURCE_REPOSITORY_URL=https://github.com/qujinping/front-end -vAPP_BUILDER_IMAGE=builder-nodejs-4-centos7:latest | oc create -f -
