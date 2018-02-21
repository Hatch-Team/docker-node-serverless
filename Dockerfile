FROM node:6.10.3-alpine

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

ENV NODE_ENV development

ENTRYPOINT ["/bin/bash", "-c"]
