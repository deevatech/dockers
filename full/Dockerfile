FROM deeva/base:latest

### Support for C/C++

# Nothing to do, should already be installed

### Support for ruby

ENV RBENV_ROOT /opt/rbenv
ENV PATH $RBENV_ROOT/bin:$RBENV_ROOT/shims:$PATH
RUN git clone https://github.com/rbenv/rbenv.git ${RBENV_ROOT} \
  && git clone https://github.com/rbenv/ruby-build.git ${RBENV_ROOT}/plugins/ruby-build \
  \
  && echo 'export RBENV_ROOT='$RBENV_ROOT >> /etc/profile.d/rbenv.sh \
  && echo 'export PATH="$RBENV_ROOT/bin:$PATH"' >> /etc/profile.d/rbenv.sh \
  && echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh \
  && chmod +x /etc/profile.d/rbenv.sh \
  \
  && echo "install: --no-rdoc --no-ri\nupdate: --no-rdoc --no-ri" > /etc/gemrc

ENV RUBY_VERSION 2.3.0
RUN rbenv install ${RUBY_VERSION} \
  && rbenv global ${RUBY_VERSION} \
  && gem update --system \
  && gem install bundler \
  && rbenv rehash

### Support for php

RUN add-apt-repository -y ppa:ondrej/php \
  && apt-get update -y \
  && apt-get install -qy --no-install-recommends \
    php7.0-cli \
    php7.0-common \
    libapache2-mod-php7.0 \
    php7.0 \
    php7.0-mysql \
    php7.0-fpm \
    php7.0-curl

### Support for python

# Nothing to do, should already be installed
# To install a more recent version:
#RUN add-apt-repository ppa:fkrull/deadsnakes \
#  && apt-get update -y \
#  && apt-get install -qy --no-install-recommends \
#    python3.5 \
#  && rm /usr/bin/python \
#  && ln -s /usr/bin/python3.5 /usr/bin/python

### Support for golang

ENV GO_VERSION 1.6
ENV GOROOT /opt/go
ENV PATH $GOROOT/bin:$PATH
RUN curl -s https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz | tar -C /opt -zx 

### Support for javascript

ENV NODE_VERSION 4.3.2
ENV PATH /opt/node/bin:$PATH
RUN curl -s https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.xz | tar -C /opt -xJ \
  && ln -s /opt/node-v${NODE_VERSION}-linux-x64 /opt/node

### Support for java

RUN apt-get install -qy --no-install-recommends \
    openjdk-7-jdk

### Support for scala (requires java)

RUN apt-get install -qy --no-install-recommends \
    scala

### Support for clojure (requires java)

ENV CLOJURE_VERSION 1.8.0
RUN curl -s http://repo1.maven.org/maven2/org/clojure/clojure/${CLOJURE_VERSION}/clojure-${CLOJURE_VERSION}.zip -o /opt/clojure.zip \
  && unzip -q -d /opt /opt/clojure.zip \
  && chmod 775 /opt/clojure-${CLOJURE_VERSION} \
  && ln -s /opt/clojure-${CLOJURE_VERSION} /opt/clojure \
  && rm /opt/clojure.zip

### All done!

RUN apt-get clean
USER deeva
CMD ["/bin/bash", "-l"]

