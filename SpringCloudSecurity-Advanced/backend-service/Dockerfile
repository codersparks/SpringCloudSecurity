FROM openjdk:8-jdk-alpine
ENV EUREKA_URI="http://discovery:8080/eureka"
VOLUME /tmp
COPY target/backend-service.jar app.jar
ENTRYPOINT ["java","-jar", "app.jar"]