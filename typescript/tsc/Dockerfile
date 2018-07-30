FROM node:8.11.3-alpine
RUN npm install -g typescript@2.9.2
RUN ln -s /usr/local/lib/node_modules/typescript/bin/tsc /usr/bin/tsc
ENTRYPOINT ["/usr/bin/tsc"]
