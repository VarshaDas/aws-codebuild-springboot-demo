# Use an official OpenJDK runtime as a parent image
FROM amazoncorretto:11

# Set the working directory in the container
WORKDIR /app

# Copy the Spring Boot JAR file into the container
COPY target/varsha-test.jar varshadas-test-registry:latest.jar

# Expose the port that your Spring Boot application listens on (default is 8080)
EXPOSE 8080

# Define the command to run when the container starts
CMD ["java", "-jar", "varshadas-test-registry:latest.jar"]
