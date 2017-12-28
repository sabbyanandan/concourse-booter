#!/usr/bin/env bash

set -e -x

export ROOT_FOLDER=$( pwd )
export REPO=repo

. generate-settings.sh

git clone concourse-boot-sample foo-app

cd foo-app

./mvnw package docker:build