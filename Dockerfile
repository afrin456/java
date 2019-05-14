FROM tomcat:8.0.20-jre8
RUN mkdir /usr/local/tomcat/webapps/helloworld
#RUN curl -u admin:admin123 -o /usr/local/tomcat/webapps/helloworld/helloworld.war "http://vmachine.southindia.cloudapp.azure.com:8081/#browse/browse:maven-snapshots:helloworld%2Fhelloworld%2F1.0-SNAPSHOT%2F1.0-20190509.111853-8%2Fhelloworld-1.0-20190509.111853-8.war" -L

COPY ./target/helloworld.war /usr/local/tomcat/webapps/helloworld/
