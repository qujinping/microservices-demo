# !/bin/bash

oc process -f /Users/qujinping/minishift/core/dockerbc_templ.yaml -v=APP_NAME=runtime-openjdk-18-centos7 -vAPP_SOURCE_REPOSITORY_URL=https://github.com/qujinping/runtime-java-container -vAPP_SOURCE_CONTEXT_DIR=. -v=FROM_IMAGE_STREAM_NAME="runtime-base-centos7:latest" -v=FROM_IMAGE_STREAM_NAMESPACE="core"| oc create -f -
