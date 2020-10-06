FROM alpine

RUN \
  apk --update add iptables ip6tables bash

COPY start /start

CMD /start


