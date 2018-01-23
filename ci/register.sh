#!/usr/bin/env sh

set -e -u

VERSION=$(find distribution-repository -name "*.jar" | xargs basename | sed 's|concourse-booter-\(.*\)\.jar|\1|')

echo $VERSION

# echo "Registering ${buildName}/${buildNumber}"

# curl \
# 	-X \
# 	POST "http://sabby-test-dataflow-server.cfapps.io/apps/source/foo" > /dev/null || { echo "Failed to promote" >&2; exit 1; }
#     -d "uri=maven://com.example:concourse-boot-sample:0.0.1"


# echo "Registered ${buildName}/${buildNumber}"