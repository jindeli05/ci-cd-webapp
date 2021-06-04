# 1. use tomcat as the application server
# 2. now inside host copy the war into the image
# 3. expose the application to the public 
# 4. after the image has been build run the container instance and let CMD run the application


FROM tomcat

COPY target/aurorards-webapp.war /usr/local/tomcat/webapps/aurorards-webapp.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
