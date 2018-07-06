FROM tomcat:latest
MAINTAINER wulinyun "lin.wu@landasoft.com"
WORKDIR /usr/local
RUN rm -rf /usr/local/tomcat/webapps/*
ADD target/spring-boot-demo.war /usr/local/tomcat/webapps/ROOT.war
#RUN yes|unzip /usr/local/tomcat/webapps/ROOT.war -d /usr/local/tomcat/webapps/ROOT/
#RUN chmod 777 -Rf /usr/local/tomcat/webapps/*
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone