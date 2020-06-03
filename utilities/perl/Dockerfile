FROM  eurolinux/eurolinux-7 
# For more information please visit https://en.euro-linux.com/

LABEL maintainer="<wz@euro-linux.com>"
LABEL org.label-schema.schema-version="1.0" \
      org.label-schema.name="Perl" \
      org.label-schema.vendor="EuroLinux" \
      org.label-schema.url="https://euro-linux.com"

RUN yum install -y  perl \
    && yum clean all

CMD ["perl", "-de0"]



