FROM scratch

ADD alpine-minirootfs-3.10.3-x86_64.tar.gz /
ADD apache-tomcat-9.0.30.tar.gz /opt
RUN mv /opt/apache-tomcat-9.0.30 /opt/tomcat9
RUN apk update
RUN apk add bash
RUN apk add openjdk8


ENV CATALINA_HOME /opt/tomcat9
ENV PATH $CATALINA_HOME/bin:$PATH
WORKDIR $CATALINA_HOME/bin
COPY setenv.sh $CATALINA_HOME
RUN mv webapps webapps.dist
RUN mkdir webapps
COPY target/springmvc-user-reg-login.war /opt/tomcat9/webapps/


EXPOSE 8000
CMD ["catalina.sh", "run"]