# !/bin/bash

NAMESPACE="mid/"
BASE_IMAGE_NAME="builder-ruby"
VERSION="4"
VERSION_STR=${VERSION//./}
OS=centos7
SOURCE_REPOSITORY="https://github.com/qujinping/s2i-ruby-container.git"

oc process -f /Users/qujinping/minishift/core/custombc_templ.yaml -v=NAMESPACE=${NAMESPACE} -v=BASE_IMAGE_NAME=${BASE_IMAGE_NAME} -vVERSION="2.2" -vVERSION_STR="22" -vOS=${OS} -vSOURCE_REPOSITORY=${SOURCE_REPOSITORY} | oc create -f -
oc process -f /Users/qujinping/minishift/core/custombc_templ.yaml -v=NAMESPACE=${NAMESPACE} -v=BASE_IMAGE_NAME=${BASE_IMAGE_NAME} -vVERSION="2.3" -vVERSION_STR="23" -vOS=${OS} -vSOURCE_REPOSITORY=${SOURCE_REPOSITORY} | oc create -f -
