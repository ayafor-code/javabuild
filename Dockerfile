# Use the official Tomcat base image
FROM tomcat:9-jdk17-temurin-jammy

# Maintainer Ayafor Emmanuel
LABEL maintainer ayafor@zenith-africa.com 

# Remove the default webapps (optional, but good practice for production)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your .war file into the webapps directory
# Replace your-application.war with the actual name of your .war file
COPY linkpay.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat (default command for the base image)
CMD ["catalina.sh", "run"]
