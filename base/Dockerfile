FROM java:openjdk-8
MAINTAINER Alexander Kiel <alexanderkiel@gmx.net>

ARG DATOMIC_VERSION
ENV DATOMIC_VERSION=${DATOMIC_VERSION}

ADD https://my.datomic.com/downloads/free/${DATOMIC_VERSION} /tmp/datomic.zip

RUN unzip /tmp/datomic.zip && rm /tmp/datomic.zip

