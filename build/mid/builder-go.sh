# !/bin/bash

NAMESPACE="mid/"
BASE_IMAGE_NAME="builder-go"
VERSION="1.6"
VERSION_STR=${VERSION//./}
OS=centos7
SOURCE_REPOSITORY="https://github.com/qujinping/s2i-go.git"

oc process -f /Users/qujinping/minishift/core/custombc_templ.yaml -v=NAMESPACE=${NAMESPACE} -v=BASE_IMAGE_NAME=${BASE_IMAGE_NAME} -vVERSION="1.4" -vVERSION_STR="14" -vOS=${OS} -vSOURCE_REPOSITORY=${SOURCE_REPOSITORY} | oc create -f -
oc process -f /Users/qujinping/minishift/core/custombc_templ.yaml -v=NAMESPACE=${NAMESPACE} -v=BASE_IMAGE_NAME=${BASE_IMAGE_NAME} -vVERSION="1.5" -vVERSION_STR="15" -vOS=${OS} -vSOURCE_REPOSITORY=${SOURCE_REPOSITORY} | oc create -f -
oc process -f /Users/qujinping/minishift/core/custombc_templ.yaml -v=NAMESPACE=${NAMESPACE} -v=BASE_IMAGE_NAME=${BASE_IMAGE_NAME} -vVERSION="1.6" -vVERSION_STR="16" -vOS=${OS} -vSOURCE_REPOSITORY=${SOURCE_REPOSITORY} | oc create -f -
oc process -f /Users/qujinping/minishift/core/custombc_templ.yaml -v=NAMESPACE=${NAMESPACE} -v=BASE_IMAGE_NAME=${BASE_IMAGE_NAME} -vVERSION="1.7" -vVERSION_STR="17" -vOS=${OS} -vSOURCE_REPOSITORY=${SOURCE_REPOSITORY} | oc create -f -
