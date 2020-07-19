#!/usr/bin/env bash

set -e

DOCKER_REPO='asandeepin/docker-tikaapp'

while getopts ":h" opt; do
    case ${opt} in
    h)
        echo "Usage:"
        echo "    build.sh -h                Display this help message."
        echo "    build.sh                   Builds docker image with tag from current_version file."
        echo "    build.sh <TIKA_VERSION>    Builds docker image with <TIKA_VERSION> tag."
        exit 0
        ;;
    \?)
        echo "Invalid Option: -$OPTARG" 1>&2
        exit 1
        ;;
    esac
done

TIKA_VERSION=$1

if [ -z "${TIKA_VERSION}" ]; then
    TIKA_VERSION=$(<current_version)
fi

docker build . \
    --build-arg TIKA_VERSION=${TIKA_VERSION} \
    -t ${DOCKER_REPO}:${TIKA_VERSION} \
    -t ${DOCKER_REPO}:latest
