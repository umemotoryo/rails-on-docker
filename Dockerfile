FROM ruby:2.4.1-alpine
ENV LANG C.UTF-8
ENV ROOT_PATH /app
ENV BUNDLE_PATH /gems
VOLUME /gems
RUN mkdir $ROOT_PATH
WORKDIR $ROOT_PATH

RUN apk update && \
    apk upgrade && \
    apk add --update --no-cache \
      build-base \
      curl-dev \
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      ruby-dev \
      yaml-dev \
      zlib-dev \
      bash \
      git \
      nodejs \
      openssh \
      less \
      ruby-json \
      tzdata \
      mariadb-dev \
      yaml && \
      gem install bundler && \
      bundle config path /gems && \
      bundle config jogs 4
RUN echo -e 'http://dl-cdn.alpinelinux.org/alpine/edge/main\nhttp://dl-cdn.alpinelinux.org/alpine/edge/community\nhttp://dl-cdn.alpinelinux.org/alpine/edge/testing' > /etc/apk/repositories && \
    apk add --no-cache yarn && \
    yarn install
