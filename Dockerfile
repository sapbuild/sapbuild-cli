FROM node:0.12-onbuild

RUN npm install -g sap-build-cli@0.3.3
ADD server/config.json /usr/local/lib/node_modules/sap-build-cli/server/config.json

EXPOSE 9000

ENTRYPOINT ["sapbuild"]

