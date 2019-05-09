FROM tomcat:8.0.20-jre8

RUN mkdir /usr/local/tomcat/webapps/helloworld

COPY /1.0-SNAPSHOT/helloworld-1.0-20190509.053652-5.war /usr/local/tomcat/webapps/helloworld/
