FROM openjdk:14

ENV JAVA=/usr/java/openjdk-14/bin/java

ENV WDIR=/usr/local/tomcat/webapps
ENV BASE=/usr/local/tomcat
ENV HOME=/usr/local/tomcat
ENV WAPP=$WDIR

WORKDIR $WDIR

COPY --from=tomcat:9.0 $HOME $HOME
COPY ./src/main/webapp $WDIR/eshop
COPY ./build/classes $WDIR/eshop/WEB-INF/classes
COPY ./lib $HOME/lib

EXPOSE 8080

CMD ["bash", "-c", "$JAVA -Dcatalina.base=$BASE \
 -Dcatalina.home=$HOME \
 -Dwtp.deploy=$WAPP \
 -Dfile.encoding=UTF-8 \
 -classpath $HOME/bin/bootstrap.jar:$HOME/bin/commons-daemon.jar:$HOME/bin/tomcat-juli.jar \
 org.apache.catalina.startup.Bootstrap start"]
