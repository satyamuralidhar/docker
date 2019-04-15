FROM tomcat:8.0
LABEL author="satya"
ADD openmrs.war /usr/local/tomcat/webapps/jenkins.war
EXPOSE 8080
CMD [ "sudo apt-get install jenkins", "run" ]

# docker built -t jenkins:5.1
# docker tag jenkins:5.1 satya/jenkins:5.1
# docker login
# docker push <>





























https://www.youtube.com/watch?v=gdbA3vR2eDs

