# Using base image tomcat 8.0
FROM tomcat:8.0-alpine
# Copies the war file to our webapps folder
COPY ./target/hw2-swe645-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps
# Gives the war file all user permissions
RUN chmod 777 /usr/local/tomcat/webapps/hw2-swe645-0.0.1-SNAPSHOT.war
# Exposes the prt 8080
EXPOSE 8080
# Commands to run Tomcat
CMD ["catalina.sh", "run"]

