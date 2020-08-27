FROM  eurolinux/eurolinux-7
# For more information please visit https://en.euro-linux.com/


LABEL maintainer="EuroLinux <containers@euro-linux.com> @Eurolinux"
LABEL org.label-schema.schema-version="1.0" \
 org.label-schema.name="OpenJDK" \
 org.label-schema.vendor="EuroLinux" \
 org.label-schema.url="https://euro-linux.com"


RUN  yum install -y java-11-openjdk-devel \
  && yum clean all

ENV JAVA_HOME=/etc/alternatives/java_sdk_11
ENV PATH="$JAVA_HOME/bin:$PATH"