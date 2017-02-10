FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.6.3

RUN gem install do_snapshot --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["do_snapshot"]
CMD ["--help"]
