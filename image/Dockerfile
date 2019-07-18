FROM postgres:11.4

RUN set -ex \
	&& apt-get update \
	&& apt-get install -y --no-install-recommends ca-certificates curl

RUN set -ex \
	&& curl -sL https://deb.nodesource.com/setup_10.x | bash - \
	&& apt-get install -y --no-install-recommends git nodejs=10.16.0-1nodesource1 openssh-client \
	&& rm -rf /var/lib/apt/lists/*

COPY repo /repo
