FROM openjdk:8-jre-alpine

LABEL maintainer="Sandeep Aggarwal <asandeep.me@gmail.com>"

ENV TIKA_VERSION 1.22
ENV TIKA_APP_URL https://www.apache.org/dist/tika/tika-app-$TIKA_VERSION.jar

RUN	apk update \
    && apk add curl \
    && curl $TIKA_APP_URL -o tika-app-${TIKA_VERSION}.jar

CMD /bin/sh
