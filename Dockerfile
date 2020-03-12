FROM alpine:edge
RUN apk add --no-cache openjdk8
WORKDIR /opt/demo-docker/lib/
COPY target/demo-docker-0.0.1-SNAPSHOT.jar .
ENTRYPOINT ["/usr/bin/java"]
CMD ["-jar", "demo-docker-0.0.1-SNAPSHOT.jar"]
