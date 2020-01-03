FROM scratch

ADD alpine-minirootfs-3.10.3-x86_64.tar.gz /
ADD apache-tomcat-9.0.30.tar.gz /opt


RUN apk update
RUN apk add bash
RUN apk add openjdk8


RUN mv /opt/apache-tomcat-9.0.30 /opt/tomcat9
COPY setenv.sh /opt/tomcat9
ENV CATALINA_HOME /opt/tomcat9
EXPOSE 80