FROM tomcat:8.0-alpine
ADD ./hw1part2.war /usr/local/tomcat/webapps/
RUN chmod 777 /usr/local/tomcat/webapps/hw1part2.war
EXPOSE 8080
CMD ["catalina.sh", "run"]

