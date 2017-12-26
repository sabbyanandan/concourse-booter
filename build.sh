#!/usr/bin/env bash

set -e -x

git clone concourse-boot-sample foo-app

cd foo-app

mvn clean

mvn -U install