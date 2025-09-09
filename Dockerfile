FROM tomcat:10.1.45-jdk17-temurin-noble
COPY ./target/*.war /usr/local/tomcat/webapps/app.war
