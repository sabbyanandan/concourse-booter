
FROM java:8-jre-alpine

ADD concourse-booter-*.jar concourse-booter.jar

ENTRYPOINT exec java -Djava.security.egd=file:/dev/./urandom -jar /concourse-booter.jar