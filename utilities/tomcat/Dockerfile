FROM  eurolinux/eurolinux-7 
# For more information please visit https://en.euro-linux.com/
  
RUN yum install -y tomcat \
    &&  yum clean all 

USER tomcat

EXPOSE 8080

CMD ["/usr/libexec/tomcat/server", "start"]

