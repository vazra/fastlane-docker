FROM ruby:2-alpine
LABEL maintainer "Vazra <ameen[at]mocioun.com>"

ENV LANG "en_US.UTF-8"
ENV LC_ALL "en_US.UTF-8"

RUN apk update && \
    apk add --no-cache \
        ruby-dev \
        g++ \
        make \
    && rm -rf /tmp/* /var/tmp/*

# RUN apk add --update alpine-sdk
RUN gem install fastlane