FROM  eurolinux/eurolinux-7 
# For more information please visit https://en.euro-linux.com/

LABEL maintainer="<wz@euro-linux.com>"
LABEL org.label-schema.schema-version="1.0" \
 org.label-schema.name="gcc" \
 org.label-schema.vendor="EuroLinux" \
 org.label-schema.url="https://euro-linux.com"

RUN yum install -y  gcc \
    && yum clean all

WORKDIR /my_gcc

RUN adduser gcc
RUN chown -R gcc:gcc /my_gcc

VOLUME ["/my_gcc"]

USER gcc

CMD ["bash"]



