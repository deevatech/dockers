FROM deeva/base:latest

### Support for javascript

ENV NODE_VERSION 4.3.2
ENV PATH /opt/node/bin:$PATH
RUN curl -s https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.xz | tar -C /opt -xJ \
  && ln -s /opt/node-v${NODE_VERSION}-linux-x64 /opt/node

### All done!

RUN apt-get clean
USER deeva
CMD ["/bin/bash", "-l"]

