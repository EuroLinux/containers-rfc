FROM  eurolinux/eurolinux-7 
# For more information please visit https://en.euro-linux.com/

LABEL maintainer="<wz@euro-linux.com>"
LABEL org.label-schema.schema-version="1.0" \
 org.label-schema.name="Ruby " \
 org.label-schema.vendor="EuroLinux" \
 org.label-schema.url="https://euro-linux.com"


RUN yum install -y  ruby \
    && yum clean all

WORKDIR /my_ruby

RUN adduser ruby
RUN chown -R ruby:ruby /my_ruby

VOLUME ["/my_ruby"]

USER ruby

CMD ["irb"]
