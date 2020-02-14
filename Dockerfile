FROM ubuntu:14.04
MAINTAINER "korea-her <sjher1@kr.ibm.com>"
LABEL "purpose"="pratice"
RUN apt-get update
RUN apt-get install -y apache2
ADD test.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo Hello >> test.html"]
EXPOSE 80
CMD apachectl -D FOREGROUND
