FROM ubuntu:16.04
MAINTAINER info@bytesmith.de

ENV LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8

## dependencies. Use cloudfront, official CDN gives frequent 503 errors
RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		bash-completion \
		ca-certificates \
		curl \
		file \
		fonts-texgyre \
		g++ \
		gfortran \
		gsfonts \
		less \
		libbz2-1.0 \
		libcurl3 \
		libgomp1 \
		libopenblas-dev \
		libpango1.0-0 \
		libpcre3 \
		libpng16-16 \
		libtiff5 \
		liblzma5 \
		libsm6 \
		libxt6 \
		locales \
		make \
		unzip \
		wget \
		zip \
		zlib1g \
	&& echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
	&& locale-gen en_US.utf8 \
	&& /usr/sbin/update-locale LANG=en_US.UTF-8 \
	&& cd /tmp \
	&& curl -O https://rserverdistribution.azureedge.net/production/RClient/9.1.0.0/3551_rev/1033/246b4328439b435bb5171f59f7d17fb7/microsoft-r-client-3.3.3.tar.gz \
	&& tar zxvf microsoft-r-client-3.3.3.tar.gz \
    && cd /tmp/MRC_Linux \
    && ./install.sh -a -s -m \ 
    && rm -rf /tmp/* \
	&& apt-get autoremove -y \
	&& apt-get autoclean -y \
	&& rm -rf /var/lib/apt/lists/*
CMD ["Revo64"]
