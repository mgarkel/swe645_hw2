#
# Build stage
#
FROM maven:3.6.3-jdk-11-slim AS build
COPY . /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

# 
# Package Stage
#
FROM tomcat:8.0-alpine
COPY --from=build /home/app/target/hw2-swe645-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
RUN chmod 777 /usr/local/tomcat/webapps/hw2-swe645-0.0.1-SNAPSHOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]

