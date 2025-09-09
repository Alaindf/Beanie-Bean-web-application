FROM tomcat:9-jre9-slim
COPY /var/lib/jenkins/workspace/Docker_jenkins/target/*.war /usr/local/tomcat/webapps/app.war
