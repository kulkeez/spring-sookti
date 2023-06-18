# Containerize using OpenJDK and Alpine
FROM openjdk:17-alpine

ARG JAR_FILE=target/*.jar

# Copy the application jar file
COPY ${JAR_FILE} app.jar

# Define default command to run the application 
ENTRYPOINT ["java", "-jar", "/app.jar"]
