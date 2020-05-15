# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
LABEL maintainer="srutiranjan007@gmail.com"

# The application's jar file
ARG JAR_FILE=target/microservice-0.1.jar

# Add a volume pointing to /tmp
VOLUME /tmp

# Add the application's jar to the container
ADD ${JAR_FILE} app.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]

# Make port 8080 available to the world outside this container
EXPOSE 8080
