FROM tomcat:8.0
LABEL author="satya"
ADD openmrs.war /usr/local/tomcat/webapps/openmrs.war
EXPOSE 8080
CMD [ "catalina.sh", "run" ]

# docker built -t openmrs:2.1.2
# docker tag openmrs:2.1.2 satya/openmrs:2.1.2
# docker login
# docker push <>

