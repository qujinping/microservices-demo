# !/bin/bash

NAMESPACE="mid/"
BASE_IMAGE_NAME="builder-perl"
VERSION="4"
VERSION_STR=${VERSION//./}
OS=centos7
SOURCE_REPOSITORY="https://github.com/qujinping/s2i-perl-container.git"

oc process -f /Users/qujinping/minishift/core/custombc_templ.yaml -v=NAMESPACE=${NAMESPACE} -v=BASE_IMAGE_NAME=${BASE_IMAGE_NAME} -vVERSION="5.20" -vVERSION_STR="520" -vOS=${OS} -vSOURCE_REPOSITORY=${SOURCE_REPOSITORY} | oc create -f -
oc process -f /Users/qujinping/minishift/core/custombc_templ.yaml -v=NAMESPACE=${NAMESPACE} -v=BASE_IMAGE_NAME=${BASE_IMAGE_NAME} -vVERSION="5.24" -vVERSION_STR="524" -vOS=${OS} -vSOURCE_REPOSITORY=${SOURCE_REPOSITORY} | oc create -f -
