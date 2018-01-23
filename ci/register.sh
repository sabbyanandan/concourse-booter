#!/usr/bin/env sh

set -e -u

VERSION=$(find distribution-repository -name "*.jar" | xargs basename | sed 's|concourse-booter-\(.*\)\.jar|\1|')

echo "Registering concourse-booter ${VERSION}"

curl \
	-X \
	POST "http://sabby-test-dataflow-server.cfapps.io/apps/source/concourse-booter" > /dev/null || { echo "Failed to promote" >&2; exit 1; }
    -d "uri=maven://com.example:concourse-booter:${VERSION}"