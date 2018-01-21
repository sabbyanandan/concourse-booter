#!/bin/bash
set -e

source /opt/concourse-java.sh

setup_symlinks
cleanup_maven_repo "com.exmaple"

repository=$(pwd)/distribution-repository

pushd the-gitrigger > /dev/null
run_maven -f pom.xml clean deploy -U -Dfull -DaltDeploymentRepository=distribution::default::file://${repository}
popd > /dev/null