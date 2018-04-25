FROM alpine:3.7

MAINTAINER dincer "dincer@dincersalihkurnaz.com"

RUN apk add --update \
    git \
    python \
    python-dev \
    py-pip \
    py-gunicorn \
    py-mysqldb \
  && pip install flask -U \
  && rm -rf /var/cache/apk/*

RUN git clone https://gist.github.com/vedit/32f37e0b8f842521fbc89e9d8e2bfaf9 app

WORKDIR /app

EXPOSE 3000
ENTRYPOINT ["/usr/bin/gunicorn", "-b", ":3000", "application:application"]
