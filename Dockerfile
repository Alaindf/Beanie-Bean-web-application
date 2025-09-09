FROM tomcat/tomcat01:latest
COPY ./target/*.war /usr/local/tomcat/webapps/app.war
