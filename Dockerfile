# Use lightweight Java runtime
FROM eclipse-temurin:11-jre

# Set working directory
WORKDIR /app

# Copy jar built by Maven
COPY board/target/*.jar app.jar

# Expose Spring Boot port
EXPOSE 8080

# Run Spring Boot application
ENTRYPOINT ["java","-jar","app.jar"]
