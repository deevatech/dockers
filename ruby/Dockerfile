FROM deeva/base:latest

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

### All done!

USER deeva
CMD ["/bin/bash", "-l"]

