FROM scratch
ADD eurolinux-9.tar.gz /

LABEL maintainer="Aleksander Baranowski <ab@euro-linux.com> (@AlexBaranowski)"
LABEL org.label-schema.schema-version="1.0" \
  org.label-schema.name="EuroLinux 9" \
  org.label-schema.vendor="System - EuroLinux; Image - EuroLinux" \
  org.label-schema.url="https://euro-linux.com"\
  org.label-schema.vcs-url="https://github.com/EuroLinux/containers-rfc"\
  org.label-schema.license="GPLv2" \
  org.label-schema.build-date="20211213"

ENV LOG4J_FORMAT_MSG_NO_LOOKUPS=true
CMD ["/bin/bash"]
