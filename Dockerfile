FROM node:8.10-alpine

RUN apk add --no-cache \
    python \
    py-pip \
    ca-certificates \
    groff \
    less \
    bash \
    openssh \
    git \
  && pip install --no-cache-dir --upgrade pip awscli
RUN apk add 'postgresql-client=9.5.12-r0' --update-cache --repository http://nl.alpinelinux.org/alpine/v3.4/main
RUN npm install -g yarn
ENV NODE_ENV development

ENTRYPOINT ["/bin/bash", "-c"]
