ARG alpine_version
FROM alpine:${alpine_version}
ARG coffeescript_version

RUN apk add --update-cache \
  nodejs \
  nodejs-npm

RUN npm install --global coffeescript@${coffeescript_version}

ENTRYPOINT ["coffee"]
