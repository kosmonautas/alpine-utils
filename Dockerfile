FROM alpine

RUN apk update && apk upgrade && \
  apk add --no-cache bash git jq curl openssl && \
  rm -rf /var/lib/apt/lists/* && \
  rm /var/cache/apk/*
