FROM  eurolinux/eurolinux-7
# For more information please visit https://en.euro-linux.com/

LABEL maintainer="<wz@euro-linux.com>"
LABEL org.label-schema.schema-version="1.0" \
 org.label-schema.name="PHP" \
 org.label-schema.vendor="EuroLinux" \
 org.label-schema.url="https://euro-linux.com"
 
RUN yum install -y php \
    && yum clean all

WORKDIR /my_php

RUN adduser php
RUN chown -R php:php /my_php

VOLUME ["/my_php"]

USER php

CMD ["php", "-a"]

