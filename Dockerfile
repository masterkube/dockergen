FROM tomcat:9.0.48-jdk11-openjdk-slim
  
COPY ./Axon.war /usr/local/tomcat/webapps/

RUN ["apt-get", "update"]
RUN ["apt-get", "-y", "install", "nano"]

CMD ["catalina.sh","run"]

