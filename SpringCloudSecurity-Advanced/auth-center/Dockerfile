FROM openjdk:8-jdk
ENV EUREKA_URI="http://discovery:8080/eureka"
VOLUME /tmp
COPY target/auth-center.jar app.jar
ENTRYPOINT ["java","-jar", "app.jar"]