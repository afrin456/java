FROM tomcat:8.0.20-jre8

RUN mkdir /usr/local/tomcat/webapps/helloworld

COPY /home/vsts/work/1/s/target/helloworld.war /usr/local/tomcat/webapps/helloworld/
