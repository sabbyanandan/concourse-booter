#!/usr/bin/env sh

set -e -u

[[ -d $PWD/maven && ! -d $HOME/.m2 ]] && ln -s $PWD/maven $HOME/.m2

repository=$(pwd)/distribution-repository

cd concourse-booter
./mvnw deploy -DaltDeploymentRepository=distribution::default::file://${repository}