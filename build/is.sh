# !/bin/bash

oc import-image 192.168.32.2:9000/mid/builder-go-16-centos7 --insecure --confirm
oc import-image 192.168.32.2:9000/mid/builder-nodejs-4-centos7 --insecure --confirm
oc import-image 192.168.32.2:9000/mid/builder-openjdk-18-centos7 --insecure --confirm
oc import-image 192.168.32.2:9000/mid/builder-python-27-centos7 --insecure --confirm
oc import-image 192.168.32.2:9000/core/runtime-base-centos7 --insecure --confirm
oc import-image 192.168.32.2:9000/core/runtime-openjdk-18-centos7 --insecure --confirm
oc import-image 192.168.32.2:9000/mysql:5.7 --insecure --confirm

oc import-image orders-db --from=192.168.32.2:9000/mongo --insecure --confirm
oc import-image cart-db --from=192.168.32.2:9000/mongo --insecure --confirm
oc import-image 192.168.32.2:9000/rabbitmq:3 --insecure --confirm
oc import-image 192.168.32.2:9000/openzipkin/zipkin --insecure --confirm
oc import-image mongo:3 --from=192.168.32.2:9000/mongo --insecure --confirm
