FROM alpine

RUN \
  apk --update add iptables bash

COPY start /start

CMD /start


