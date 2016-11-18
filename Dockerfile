FROM ibmjava:8-sfj

RUN \
  mkdir -p /app && \
  /bin/true

ADD linkerd/target/scala-2.11/linkerd-0.8.3-SNAPSHOT-exec /app
ADD config.yml /app
WORKDIR /app

CMD ["java", "-jar", "linkerd-0.8.3-SNAPSHOT-exec", "config.yml"]
