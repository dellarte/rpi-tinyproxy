FROM resin/rpi-raspbian
MAINTAINER Gavin Adam <gavinadam80@gmail.com>

RUN apt-get update && apt-get install -y \
    tinyproxy \
    --no-install-recommends && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 80

CMD [ "/etc/init.d/tinyproxy", "restart" ]
