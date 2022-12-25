# Containerize using OpenJDK and Alpine
FROM openjdk:11-jre-slim-buster

ARG JAR_FILE=target/*.jar

# Set the working directory
WORKDIR /app

# Copy the application jar file
COPY ${JAR_FILE} app.jar

# Define default command to run the application 
ENTRYPOINT ["java", "-jar", "/app.jar"]
