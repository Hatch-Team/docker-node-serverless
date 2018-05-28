FROM node:8.10-alpine

RUN apk add --no-cache \
    python \
    py-pip \
    ca-certificates \
    postgresql \
    groff \
    less \
    bash \
    openssh \
    git \
  && pip install --no-cache-dir --upgrade pip awscli
RUN npm install -g yarn
ENV NODE_ENV development

ENTRYPOINT ["/bin/bash", "-c"]
