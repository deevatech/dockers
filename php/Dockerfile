FROM deeva/base:latest

### Support for php

RUN add-apt-repository -y ppa:ondrej/php \
  && apt-get update -y \
  && apt-get install -qy --no-install-recommends \
    php7.0-cli \
    php7.0-common \
    php7.0 \
    php7.0-curl

### All done!

RUN apt-get clean
USER deeva
CMD ["/bin/bash", "-l"]

