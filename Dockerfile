# Use official OpenJDK 17 base image (Alpine for smaller size)
FROM eclipse-temurin:17-jdk-alpine

# Create a volume to enable app temp files
VOLUME /tmp

# Copy the built jar from the target folder into the image
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Run the jar file
ENTRYPOINT ["java", "-jar", "/app.jar"]
