FROM tomcat:10.1.15-jdk21
LABEL author=ethans
RUN apt-get update -y
COPY /var/lib/jenkins/workspace/msbuild_student/smswebapp/bin/Release/net8.0/smswebapp.dll /usr/local/tomcat/webapps/