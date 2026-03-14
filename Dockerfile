# Use Tomcat with Java 17
FROM tomcat:10.1-jdk17-temurin

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file built by Maven
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose application port
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
