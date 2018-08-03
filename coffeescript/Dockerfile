FROM alpine:3.7

RUN apk add --update-cache \
  nodejs \
  nodejs-npm

RUN npm install --global coffeescript@2.3.1

ENTRYPOINT ["coffee"]
