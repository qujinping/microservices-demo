# !/bin/bash

oc process -f /Users/qujinping/minishift/core/dockerbc_templ.yaml -v=APP_NAME=custom-docker-builder -vAPP_SOURCE_REPOSITORY_URL=https://github.com/qujinping/custom-docker-builder -vAPP_SOURCE_CONTEXT_DIR=. -v=FROM_IMAGE_STREAM_NAME="centos:latest" -v=FROM_IMAGE_STREAM_NAMESPACE="core"| oc create -f -
