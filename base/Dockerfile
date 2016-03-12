FROM ubuntu:latest
MAINTAINER Anthony Powles

RUN apt-get update -y \
  && apt-get install -qy --no-install-recommends \
    ca-certificates \
    curl \
    git \
    unzip \
    software-properties-common \
    build-essential \
    \
    libmysqlclient-dev \
    libffi-dev \
    libreadline-dev \
    libsqlite3-dev \
    libssl-dev \
    libxml2-dev \
    libxslt-dev \
  && apt-get clean

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN groupadd deeva \
  && useradd -m -s /bin/bash -g deeva deeva

CMD ["/bin/bash", "-l"]

