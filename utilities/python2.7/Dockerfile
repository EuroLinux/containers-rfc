FROM  eurolinux/eurolinux-7
# For more information please visit https://en.euro-linux.com/

LABEL maintainer="WZ <wz@euro-linux.com>"
LABEL org.label-schema.schema-version="1.0" \
 org.label-schema.name="Python2.7" \
 org.label-schema.vendor="EuroLinux" \
 org.label-schema.url="https://euro-linux.com"


RUN    yum install -y  epel-release \  
    && yum install -y  python-pip \ 
    && yum clean all

WORKDIR /my_python

VOLUME ["/my_python"]

CMD ["/usr/bin/python"]

