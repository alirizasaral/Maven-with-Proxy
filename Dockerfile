FROM maven:3.3.9-jdk-8-alpine
MAINTAINER Ali Riza Saral aliriza.saral@gmail.com

ADD *.sh /usr/local/bin/
COPY settings.template.xml /usr/share/maven/ref/settings.template.xml
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
