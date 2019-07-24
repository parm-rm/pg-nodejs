FROM postgres:11.4-alpine

RUN set -ex \
	&& apk update \
	&& apk add bash git nodejs npm openssh-client \
	&& rm -rf /var/cache/apk/*
