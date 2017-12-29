#!/usr/bin/env bash

set -e -x

export ROOT_FOLDER=$( pwd )
export REPO=repo

env && docker --version && /usr/local/bin/dockerd && docker info

. the-gitrigger/generate-settings.sh

git clone the-gitrigger foo-app

cd foo-app

./mvnw package docker:build