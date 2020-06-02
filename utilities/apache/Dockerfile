FROM  eurolinux/eurolinux-7 
# For more information please visit https://en.euro-linux.com/

LABEL maintainer="<wz@euro-linux.com>"
LABEL org.label-schema.schema-version="1.0" \
      org.label-schema.name="httpd" \
      org.label-schema.vendor="EuroLinux" \
      org.label-schema.url="https://euro-linux.com"

RUN yum install -y  httpd \  
 && yum clean all

ADD run.sh /
RUN chmod +x /run.sh

VOLUME ["/var/www/html/"]

EXPOSE 80

CMD ["/run.sh"]

