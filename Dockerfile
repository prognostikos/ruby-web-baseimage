FROM phusion/baseimage:0.9.17
MAINTAINER Matt Rohrer @prognostikos

ENV BUNDLE_PATH /bundle

ENV APP_USER app
ENV APP_SRC_DIR app

ADD . /build
RUN /build/provision && rm -rf /build

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8


CMD ["/sbin/my_init"]
EXPOSE 80 443
