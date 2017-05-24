# !/bin/bash

NAMESPACE="mid/"
BASE_IMAGE_NAME="builder-python"
VERSION="4"
VERSION_STR=${VERSION//./}
OS=centos7
SOURCE_REPOSITORY="https://github.com/qujinping/s2i-python-container.git"

oc process -f /Users/qujinping/minishift/core/custombc_templ.yaml -v=NAMESPACE=${NAMESPACE} -v=BASE_IMAGE_NAME=${BASE_IMAGE_NAME} -vVERSION="2.7" -vVERSION_STR="27" -vOS=${OS} -vSOURCE_REPOSITORY=${SOURCE_REPOSITORY} | oc create -f -
oc process -f /Users/qujinping/minishift/core/custombc_templ.yaml -v=NAMESPACE=${NAMESPACE} -v=BASE_IMAGE_NAME=${BASE_IMAGE_NAME} -vVERSION="3.4" -vVERSION_STR="34" -vOS=${OS} -vSOURCE_REPOSITORY=${SOURCE_REPOSITORY} | oc create -f -
oc process -f /Users/qujinping/minishift/core/custombc_templ.yaml -v=NAMESPACE=${NAMESPACE} -v=BASE_IMAGE_NAME=${BASE_IMAGE_NAME} -vVERSION="3.5" -vVERSION_STR="35" -vOS=${OS} -vSOURCE_REPOSITORY=${SOURCE_REPOSITORY} | oc create -f -
