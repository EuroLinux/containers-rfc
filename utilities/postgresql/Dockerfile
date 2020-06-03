FROM eurolinux/eurolinux-7 
# For more information please visit https://en.euro-linux.com/

LABEL maintainer="<wz@euro-linux.com>"
LABEL org.label-schema.schema-version="1.0" \
 org.label-schema.name="PostgreSQL" \
 org.label-schema.vendor="EuroLinux" \
 org.label-schema.url="https://euro-linux.com"


# Based on https://www.postgresql.org/download/linux/redhat/

RUN   yum install -y  https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm \
   && yum install -y  postgresql12-server \
   && yum clean all

# Add script
ADD run.sh /
RUN chmod +x /run.sh

USER postgres

CMD ["/run.sh"]

# Expose listen port
EXPOSE 5432

# Expose our data directory
VOLUME ["/var/lib/pgsql/12/data"]
