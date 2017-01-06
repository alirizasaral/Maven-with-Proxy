FROM maven:3.3.9-jdk-8-alpine
MAINTAINER Ali Riza Saral aliriza.saral@gmail.com

ADD *.sh /tmp/
ADD settings.template.xml /tmp/
ENTRYPOINT ["/tmp/entrypoint.sh"]
