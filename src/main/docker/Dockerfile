FROM java:8-alpine

ARG JAR_FILE

ADD ${JAR_FILE} concourse-booter.jar

ENTRYPOINT exec java -Djava.security.egd=file:/dev/./urandom -jar /concourse-booter.jar