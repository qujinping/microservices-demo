# !/bin/bash

oc process -f /Users/qujinping/minishift/core/dockerbc_templ.yaml -v=APP_NAME=builder-openjdk-18-centos7 -vAPP_SOURCE_REPOSITORY_URL=https://github.com/qujinping/s2i-java -vAPP_SOURCE_CONTEXT_DIR=. -v=FROM_IMAGE_STREAM_NAME="builder-base-centos7:latest" -v=FROM_IMAGE_STREAM_NAMESPACE="core"| oc create -f -
