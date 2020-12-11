FROM maven:3.6.3-amazoncorretto-8

RUN yum -y install libX11 libxi6 libgconf-2-4

ENV TZ=CET
