# Download or Use Base Image or Core Image 
FROM ubuntu:latest 

# Updating the Package Repository
RUN apt-get update && apt-get upgrade -y 

# Download, Install and COnfigure utility softwares
RUN apt-get install vim curl elinks wget unzip -y 

# Download, Install and COnfigure Java-1.8
RUN apt-get install openjdk-8-jdk -y 

# Create a Tomcat Home Directory
RUN mkdir /usr/local/tomcat  

# Download Tomcat Software on /tmp Directory
RUN wget http://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.47/bin/apache-tomcat-8.5.47.tar.gz -O /tmp/tomcat.tar.gz 

# Go to /tmp Directory and Untar the file i.e. tomcat.tar.gz
RUN cd /tmp && tar xvzf tomcat.tar.gz

# Move the Tomcat Data from /tmp/apache-tomcat-8.5.47/ to /usr/local/tomcat/
RUN cp -Rv /tmp/apache-tomcat-8.5.47/* /usr/local/tomcat/ 

# Enable or Expose Tomcat Port
EXPOSE 8080 

# Start Apache Tomcat Service or Daemon 
CMD /usr/local/tomcat/bin/catalina.sh run 


