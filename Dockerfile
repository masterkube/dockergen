FROM tomcat:8.5.47-jdk8-openjdk
  
COPY ./Axon.war /usr/local/tomcat/webapps/

RUN ["apt-get", "update"]
RUN ["apt-get", "-y", "install", "nano"]

CMD ["catalina.sh","run"]

COPY ./database.properties /usr/local/tomcat/webapps/Axon/WEB-INF/classes
COPY ./ActualDetails.properties  /usr/local/tomcat/webapps/Axon/WEB-INF/classes
COPY ./ApprovedDetails.xml /usr/local/tomcat/webapps/Axon/WEB-INF/classes
COPY ./mkpubkey /usr/local/tomcat/webapps/Axon/WEB-INF/classes
COPY ./sig /usr/local/tomcat/webapps/Axon/WEB-INF/classes

