FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/microservice-0.1.jar
WORKDIR /app
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","app.jar"]
