#!/usr/bin/env bash

set -e -x

export ROOT_FOLDER=$( pwd )
export REPO=repo

echo "Start docker.."
source /docker-lib.sh
start_docker
echo "Docker started.."

echo "The Docker Images:"
docker images

. the-gitrigger/generate-settings.sh

git clone the-gitrigger foo-app

cd foo-app

./mvnw package docker:build