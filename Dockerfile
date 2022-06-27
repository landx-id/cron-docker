FROM ubuntu:xenial

RUN apt-get update && apt-get install -y cron

# add crontab file
ADD init-cron /etc/cron.d/init-cron
RUN chmod 0644 /etc/cron.d/init-cron
RUN /usr/bin/crontab /etc/cron.d/init-cron

RUN mkdir -p /opt/commands

ADD commands /opt/commands
COPY ./executor.sh /opt/

RUN chmod 777 /opt/executor.sh
RUN chmod 777 -R /opt/commands

ENTRYPOINT ["/opt/executor.sh"]
