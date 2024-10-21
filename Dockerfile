# Start with a base image with JDK
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the entire Spring Boot project into the container
COPY . /app

# Expose the port your Spring Boot app will run on
EXPOSE 8080

# Command to run the Spring Boot application
CMD ["java", "-jar", "/app/demo-0.0.1-SNAPSHOT.jar"]
