FROM tomcat:8.0.20-jre8
RUN mkdir /usr/local/tomcat/webapps/helloworld
COPY  "<tomcat-users xmlns="http://tomcat.apache.org/xml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://tomcat.apache.org/xml tomcat-users.xsd" version="1.0"><user username="admin" password="admin" roles="manager-gui"/></tomcat-users>" /usr/local/tomcat/conf/tomcat-users.xml
#COPY  ./1/s/context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
#RUN curl -u admin:admin123 -o /usr/local/tomcat/webapps/helloworld/helloworld.war "http://vmachine.southindia.cloudapp.azure.com:8081/#browse/browse:maven-snapshots:helloworld%2Fhelloworld%2F1.0-SNAPSHOT%2F1.0-20190509.111853-8%2Fhelloworld-1.0-20190509.111853-8.war" -L

COPY ./target/helloworld.war /usr/local/tomcat/webapps/helloworld/

