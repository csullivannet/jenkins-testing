#!/bin/sh
DISTRO=fedora

SOURCE_DIR=$(cd $(dirname "$0")/../..; pwd -P)

cd $(mktemp -d /tmp/${DISTRO}-build.XXXXX)

cp ${SOURCE_DIR}/docker-images/${DISTRO}-hello/Dockerfile .

cp -R ${SOURCE_DIR}/${DISTRO}/text .

docker build -t $1 .
