#!/bin/bash

if [ "${GOLANG_VERSION}" == '' ]
then
  echo "Need to set environmental variable GOLANG_VERSION."
  exit 1
fi

if [ "${ALPINE_VERSION}" == '' ]
then
  echo "Need to set environmental variable ALPINE_VERSION."
  exit 1
fi

if [ "${REPOSITORY_NAME}" == '' ]
then
  echo "Need to set environmental variable REPOSITORY_NAME."
  exit 1
fi

docker build \
  --build-arg GOLANG_VERSION=${GOLANG_VERSION} \
  --build-arg ALPINE_VERSION=${ALPINE_VERSION} \
  -t ${REPOSITORY_NAME}:golang${GOLANG_VERSION}-alpine${ALPINE_VERSION} .
