FROM java:8
ADD target/spring-petclinic-1.5.1.jar app.jar
ADD wrapper.sh wrapper.sh
RUN bash -c 'chdmod +x /wrapper.sh'
RUN bash -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT ["/bin/bash", "/wrapper.sh"]
