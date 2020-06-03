FROM  eurolinux/eurolinux-7
# For more information please visit https://en.euro-linux.com/

LABEL maintainer="<wz@euro-linux.com>"
LABEL org.label-schema.schema-version="1.0" \
 org.label-schema.name="Python3" \
 org.label-schema.vendor="EuroLinux" \
 org.label-schema.url="https://euro-linux.com"


RUN  yum install -y  python3 \
  && yum clean all

WORKDIR /my_python
VOLUME ["/my_python"]

CMD ["/usr/bin/python3"]
