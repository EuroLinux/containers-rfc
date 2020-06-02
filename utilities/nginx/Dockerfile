FROM  eurolinux/eurolinux-7 
# For more information please visit https://en.euro-linux.com/

LABEL maintainer="<wz@euro-linux.com>"
LABEL org.label-schema.schema-version="1.0" \
 org.label-schema.name="nginx" \
 org.label-schema.vendor="EuroLinux" \
 org.label-schema.url="https://euro-linux.com"


COPY nginx.repo /etc/yum.repos.d/

RUN    yum install -y  yum-utils \  
    && yum-config-manager --enable nginx-mainline \
    && yum install -y nginx \
    && yum clean all

# config file /etc/nginx/nginx.conf

VOLUME ["/usr/share/nginx/html/"]

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]




