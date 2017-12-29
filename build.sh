#!/usr/bin/env bash

set -e -x

export ROOT_FOLDER=$( pwd )
export REPO=repo

. the-gitrigger/generate-settings.sh

git clone the-gitrigger foo-app

cd foo-app

./mvnw package docker:build