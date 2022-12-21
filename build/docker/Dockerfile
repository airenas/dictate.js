FROM nginxinc/nginx-unprivileged:1.23-alpine-perl

ARG BUILD_VERSION=0.1

LABEL org.opencontainers.image.version=$BUILD_VERSION \
      org.opencontainers.image.authors="airenass@gmail.com" \
      name="dictate" \
      maintainer="airenass@gmail.com" \
      vendor="airenass@gmail.com" \
      version=$BUILD_VERSION \
      release=$BUILD_VERSION \
      summary="This image is used to start Kaldi Gstreamer dictate gui service" \
      description="Kaldi Gstreamer dictate gui based on nginx" 

COPY LICENSE /LICENSE
COPY build/docker/nginx.conf /etc/nginx/conf.d/default.conf
COPY build/docker/entrypoint.sh /docker-entrypoint.d/40_entrypoint.sh
COPY demos /usr/share/nginx/html/demos
COPY lib /usr/share/nginx/html/lib

USER root

RUN chown nginx:nginx /usr/share/nginx/html/* /usr/share/nginx/html/demos/*  \
      /usr/share/nginx/html/lib/* /usr/share/nginx/html

USER nginx
