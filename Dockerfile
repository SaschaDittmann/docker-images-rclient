FROM ubuntu:16.04
ARG VCS_REF
ARG BUILD_DATE
ARG RCLIENT_VERSION=3.5.2
LABEL maintainer="info@bytesmith.de" \
	  org.label-schema.build-date=$BUILD_DATE \
	  org.label-schema.name="Microsoft R Client on Linux for Docker" \
	  org.label-schema.description="Microsoft R Client is a free, community-supported, data science tool for high performance analytics. R Client is built on top of Microsoft R Open so you can use any open source R package. It also introduces the powerful ScaleR technology to benefit from parallelization and remote computing." \
	  org.label-schema.url="https://docs.microsoft.com/en-us/machine-learning-server/r-client/what-is-microsoft-r-client" \
	  org.label-schema.vcs-ref=$VCS_REF \
	  org.label-schema.vcs-url="https://github.com/SaschaDittmann/docker-images-rclient" \
	  org.label-schema.version=$RCLIENT_VERSION \
	  org.label-schema.schema-version="1.0"

ENV LC_ALL=en_US.UTF-8 \
	LANG=en_US.UTF-8 \
	LANGUAGE=en_US.UTF-8 \
	MKL_CBWR="AUTO"

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		apt-utils \
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
	&& rm -rf /tmp/* \
	&& apt-get autoremove -y \
	&& apt-get autoclean -y \
	&& rm -rf /var/lib/apt/lists/*

RUN apt-get update \
		&& apt-get install -y --no-install-recommends \
			apt-transport-https \
		&& cd /tmp \
		&& wget http://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb \
		&& dpkg -i packages-microsoft-prod.deb \
	&& apt-get update \
	&& apt-get install -y --no-install-recommends \
		microsoft-r-client-packages-$RCLIENT_VERSION \
	&& rm -rf /tmp/* \
		&& apt-get autoremove -y \
		&& apt-get autoclean -y \
		&& rm -rf /var/lib/apt/lists/*
CMD ["Revo64"]
