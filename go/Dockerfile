FROM deeva/base:latest

### Support for golang

ENV GO_VERSION 1.6
ENV GOROOT /opt/go
ENV PATH $GOROOT/bin:$PATH
RUN curl -s https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz | tar -C /opt -zx 

### All done!

RUN apt-get clean
USER deeva
CMD ["/bin/bash", "-l"]

