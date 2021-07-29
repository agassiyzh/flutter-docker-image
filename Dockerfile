FROM ghcr.io/agassiyzh/flutter-docker-image/android-base-sdk:latest

ARG flutter_version

ENV FLUTTER_HOME=${HOME}/sdks/flutter \
    FLUTTER_VERSION=$flutter_version \
    FLUTTER_ROOT=$FLUTTER_HOME

ENV PATH ${PATH}:${FLUTTER_HOME}/bin:${FLUTTER_HOME}/bin/cache/dart-sdk/bin

USER root

RUN apt update && \
    apt install -y jq

RUN if [ $FLUTTER_VERSION ]; then tag_string="tags/${FLUTTER_VERSION}" ; fi && \
    echo $tag_string && \
    git clone $tag_string --branch ${FLUTTER_VERSION} https://github.com/flutter/flutter.git ${FLUTTER_HOME} && \
    flutter doctor
