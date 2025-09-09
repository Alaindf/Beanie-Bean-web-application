FROM tomcat:9-jre9-slim
COPY taget/*.war /usr/local/tomcat/webapps/app.war
