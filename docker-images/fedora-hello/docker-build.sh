#!/bin/sh
DISTRO=fedora

cp -R ../../${DISTRO}/text .

docker build -t ${DISTRO}-hello .
