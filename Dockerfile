FROM ubuntu:16.04

MAINTAINER Luis Fernando <lfernando@crmsolucoes.com.br>

RUN apt-get update -y
RUN apt-get install -y apache2 php libapache2-mod-php
RUN rm /var/www/html/index.html

ADD start.sh /root/start.sh

RUN chmod +x /root/start.sh

RUN sed -i 's/\r$//' /root/start.sh

EXPOSE 80

CMD ["/root/start.sh"]
