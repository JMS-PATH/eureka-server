FROM openjdk:11-jre-slim-buster

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

EXPOSE 8095

ENTRYPOINT ["java","-jar","/app.jar"]
HEALTHCHECK --interval=25s CMD wget --spider http://localhost:8095/actuator/health || exit 1