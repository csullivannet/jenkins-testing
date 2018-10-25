#!/bin/sh
DISTRO=alpine

cp -R ../../${DISTRO}/text .

docker build -t ${DISTRO}-hello .
