#!/bin/sh
DISTRO=debian

SOURCE_DIR=$(cd $(dirname "$0")/../..; pwd -P)

cd $(mktemp -d /tmp/${DISTRO}-build.XXXXX)

cp -R ${SOURCE_DIR}/text .

docker build -t ${DISTRO}-hello .
