FROM tomcat:8.0-alpine
mvn clean install
ADD ./target/hw2-swe645-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
RUN chmod 777 /usr/local/tomcat/webapps/hw2-swe645-0.0.1-SNAPSHOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]

