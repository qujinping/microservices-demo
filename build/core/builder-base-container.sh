# !/bin/bash

oc process -f /Users/qujinping/minishift/core/builder-base-container_tmpl.yaml -v=NAMESPACE="core/" -v=BASE_IMAGE_NAME="builder-base" -vOS=centos7 -vSOURCE_REPOSITORY="https://github.com/qujinping/s2i-base-container.git" | oc create -f -
