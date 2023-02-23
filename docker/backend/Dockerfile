FROM ubuntu:20.04
SHELL ["/bin/bash", "-c"]

RUN apt update
RUN apt install -y python3-pip

RUN pip3 install ace-backend supervisor

RUN mkdir /var/log/ace

COPY supervisor.conf /root/supervisor.conf
COPY init.sh /app/scripts/init.sh

CMD bash /app/scripts/init.sh
