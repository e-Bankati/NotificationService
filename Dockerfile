# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file of the Notification service into the container
COPY target/NotificationService-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port used by the Notification service
EXPOSE 8060

# Run the Notification service
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
