# Use an official Tomcat image as the build stage
FROM tomcat:10-jdk21-openjdk-slim AS builder

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Download PostgreSQL JDBC driver
ADD https://jdbc.postgresql.org/download/postgresql-42.2.23.jar /usr/local/tomcat/lib/

# Copy the WAR file into the Tomcat webapps directory
COPY 25250.war /usr/local/tomcat/webapps/ROOT.war

# Use Alpine as the base image for the final stage
FROM alpine:3.18

# Install dependencies
RUN apk add --no-cache openjdk17-jre bash

# Copy the Tomcat installation from the builder stage
COPY --from=builder /usr/local/tomcat /usr/local/tomcat

# Expose the port for Tomcat
EXPOSE 8080

# Start Tomcat server
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
