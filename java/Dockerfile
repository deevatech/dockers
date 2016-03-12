FROM deeva/base:latest

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

