# Start with a base image with JDK
FROM openjdk:17-jdk-alpine

VOLUME /tmp

COPY target/*.jar app.jar

# Expose the port your Spring Boot app will run on
EXPOSE 8080

# Command to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "/app.jar"]
