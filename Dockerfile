FROM phusion/baseimage:0.9.17
MAINTAINER Matt Rohrer @prognostikos

ADD . /build
RUN /build/provision && rm -rf /build

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ENV BUNDLE_PATH=/bundle

CMD ["/sbin/my_init"]
EXPOSE 80 443
