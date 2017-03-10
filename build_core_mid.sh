# !/bin/bash

pushd ./core/sig-cloud-instance-images/docker
declare tag=`git describe --always --dirty --tags 2>/dev/null`
docker build -t core/centos:$tag .
old_imageid=$(docker inspect --format='{{.Id}}' core/centos:$tag)
docker-squash -t core/centos:$tag core/centos:$tag
docker tag core/centos:$tag core/centos:7.3
docker rmi $old_imageid
popd

pushd ./core/s2i-did
docker build -t core/builder-did-centos7 .
popd

pushd ./core/s2i-base-container
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/opt/work/:z core/builder-did-centos7 make
popd

pushd ./core/runtime-base-container
docker build -t core/runtime-base-centos7 .
popd

pushd ./core/runtime-java-container
docker build -t core/runtime-openjdk-18-centos7 .
popd

pushd ./mid/s2i-go
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/opt/work/:z core/builder-did-centos7 make 
popd

pushd ./mid/s2i-java
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/opt/work/:z core/builder-did-centos7 make 
popd

pushd ./mid/jenkins
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/opt/work/:z core/builder-did-centos7 make
popd

pushd ./mid/s2i-nodejs-container
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/opt/work/:z core/builder-did-centos7 make
popd

pushd ./mid/s2i-perl-container
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/opt/work/:z core/builder-did-centos7 make
popd

pushd ./mid/s2i-php-container
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/opt/work/:z core/builder-did-centos7 make
popd

pushd ./mid/s2i-ruby-container
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/opt/work/:z core/builder-did-centos7 make
popd

pushd ./mid/s2i-python-container
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/opt/work/:z core/builder-did-centos7 make
popd

