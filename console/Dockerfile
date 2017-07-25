ARG DATOMIC_VERSION
FROM datomic-free-base:${DATOMIC_VERSION}
MAINTAINER Alexander Kiel <alexanderkiel@gmx.net>

ARG DATOMIC_CONSOLE_VERSION
ADD "datomic-console-${DATOMIC_CONSOLE_VERSION}.zip" /tmp/console.zip

RUN unzip /tmp/console.zip \
 && rm /tmp/console.zip \
 && cd /datomic-console-${DATOMIC_CONSOLE_VERSION} \
 && bin/install-console /datomic-free-${DATOMIC_VERSION} \
 && rm -rf /datomic-console-${DATOMIC_CONSOLE_VERSION}

EXPOSE 8080

WORKDIR datomic-free-${DATOMIC_VERSION}

CMD ["bin/console", "-p", "8080", "dev", "datomic:free://transactor:4334/"]

