# Base image: Tomcat + Java 11
FROM tomcat:9-jdk11

# Tomcat के default webapps हटाओ
RUN rm -rf /usr/local/tomcat/webapps/*

# Maven build के बाद target में बनने वाले .war को कॉपी करो
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Port 8080 expose करो
EXPOSE 8080

# Tomcat start command
CMD ["catalina.sh", "run"]
