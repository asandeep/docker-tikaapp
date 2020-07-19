FROM openjdk:11.0.8-jre-slim as base-build

RUN apt-get -y update \
    && apt-get install -y --no-install-recommends wget \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get autoremove && apt-get autoclean


FROM base-build

LABEL maintainer="Sandeep Aggarwal <asandeep.me@gmail.com>"

ARG TIKA_VERSION
ENV TIKA_VERSION=${TIKA_VERSION}

COPY entrypoint.sh /entrypoint.sh

RUN wget https://archive.apache.org/dist/tika/tika-app-${TIKA_VERSION}.jar -O /tika-app-${TIKA_VERSION}.jar

ENTRYPOINT ["/entrypoint.sh"]

CMD ["tika", "--help"]
