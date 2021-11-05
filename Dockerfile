FROM tomcat:8.5.47-jdk8-openjdk
  
COPY ./Axon.war /usr/local/tomcat/webapps/
COPY ./database.properties /auxfiles
COPY ./ActualDetails.properties /auxfiles
COPY ./ApprovedDetails.xml /auxfiles
COPY ./mkpubkey /auxfiles
COPY ./sig /auxfiles

RUN ["apt-get", "update"]
RUN ["apt-get", "-y", "install", "nano"]

CMD ["catalina.sh","run"]

