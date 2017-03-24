# !/bin/bash

pushd ./app/user
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/opt/work/:z core/builder-did-centos7 s2i build -c . mid/builder-go-16-centos7 --runtime-image core/runtime-base-centos7  app/user
popd

pushd ./app/shipping
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/opt/work/:z core/builder-did-centos7 s2i build -c . -e MAVEN_MIRROR_URL=http://192.168.32.1:9009/nexus/content/groups/public/ mid/builder-openjdk-18-centos7 --runtime-image core/runtime-openjdk-18-centos7 app/shipping
popd

pushd ./app/queue-master
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/opt/work/:z core/builder-did-centos7 s2i build -c . -e MAVEN_MIRROR_URL=http://192.168.32.1:9009/nexus/content/groups/public/ mid/builder-openjdk-18-centos7 --runtime-image core/runtime-openjdk-18-centos7 app/queue-master
popd

pushd ./app/payment
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/opt/work/:z core/builder-did-centos7 s2i build -c . mid/builder-go-16-centos7 --runtime-image core/runtime-base-centos7  app/payment
popd

pushd ./app/orders
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/opt/work/:z core/builder-did-centos7 s2i build -c . -e MAVEN_MIRROR_URL=http://192.168.32.1:9009/nexus/content/groups/public/ mid/builder-openjdk-18-centos7 --runtime-image core/runtime-openjdk-18-centos7 app/orders
popd

pushd ./app/catalogue
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/opt/work/:z core/builder-did-centos7 s2i build -c . mid/builder-go-16-centos7 --runtime-image core/runtime-base-centos7 app/catalogue
popd

pushd ./app/carts
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/opt/work/:z core/builder-did-centos7 s2i build -c . -e MAVEN_MIRROR_URL=http://192.168.32.1:9009/nexus/content/groups/public/ mid/builder-openjdk-18-centos7 --runtime-image core/runtime-openjdk-18-centos7 app/cart
popd

pushd ./app/front-end
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/opt/work/:z core/builder-did-centos7 s2i build -c . -e NPM_MIRROR=http://192.168.32.1:9009/nexus/content/groups/npm/ mid/builder-nodejs-4-centos7 app/front-end
popd

docker pull traefik:camembert-alpine
docker pull mysql:5.7
docker pull mongo
docker pull rabbitmq:3
docker pull openzipkin/zipkin

pushd ./app/edge-router
docker build -t app/edge-router .
popd

pushd ./app/catalogue/docker/catalogue-db
docker build -t app/catalogue-db .
popd

pushd ./app/user/docker/user-db
docker build -t app/user-db .
popd

pushd ./app/load-test
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/opt/work/:z core/builder-did-centos7 s2i build -e UPGRADE_PIP_TO_LATEST=true -c . mid/builder-python-35-centos7 app/load-test
popd

