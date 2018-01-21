FROM java:8-alpine

RUN apk update && \
    apk install -y git && \
    apk install -y libxml2-utils && \
    apk install -y jq

ADD https://raw.githubusercontent.com/spring-io/concourse-java-scripts/v0.0.1/concourse-java.sh /opt/