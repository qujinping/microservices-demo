# !/bin/bash

NAMESPACE="mid/"
BASE_IMAGE_NAME="builder-php"
VERSION="4"
VERSION_STR=${VERSION//./}
OS=centos7
SOURCE_REPOSITORY="https://github.com/qujinping/s2i-php-container.git"

oc process -f /Users/qujinping/minishift/core/custombc_templ.yaml -v=NAMESPACE=${NAMESPACE} -v=BASE_IMAGE_NAME=${BASE_IMAGE_NAME} -vVERSION="5.6" -vVERSION_STR="56" -vOS=${OS} -vSOURCE_REPOSITORY=${SOURCE_REPOSITORY} | oc create -f -
oc process -f /Users/qujinping/minishift/core/custombc_templ.yaml -v=NAMESPACE=${NAMESPACE} -v=BASE_IMAGE_NAME=${BASE_IMAGE_NAME} -vVERSION="7.0" -vVERSION_STR="70" -vOS=${OS} -vSOURCE_REPOSITORY=${SOURCE_REPOSITORY} | oc create -f -
