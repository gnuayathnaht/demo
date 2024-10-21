# Start with a base image with JDK
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Correcto 17 JAR into the Docker container
COPY libs/correcto-17.jar /app/libs/correcto-17.jar

# Copy the entire Spring Boot project into the container
COPY . /app

# Build the project (this assumes you're using Maven Wrapper)
RUN ./mvnw clean package

# Copy the generated JAR file (from the target directory)
COPY target/demo-0.0.1-SNAPSHOT.jar /app/demo-0.0.1-SNAPSHOT.jar

# Expose the port your Spring Boot app will run on
EXPOSE 8080

# Command to run the Spring Boot application
CMD ["java", "-jar", "/app/demo-0.0.1-SNAPSHOT.jar"]
