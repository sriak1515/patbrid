FROM node:18-alpine

WORKDIR /workspace

RUN apk add --no-cache git && \
  mkdir -p /watch && mkdir -p /download

COPY package.json yarn.lock /workspace/
RUN yarn install --frozen-lockfile

ADD . /workspace

CMD yarn start
