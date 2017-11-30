# Builds production version of tc-bus-api inside Docker container,
# and runs it against the specified Topcoder backend (development or
# production) when container is executed.

FROM node:8.2.1
LABEL app="tc-bus-api" version="1.0"
RUN apt-get update
WORKDIR /opt/app
COPY . .
RUN npm install
#RUN npm test
#ENV NODE_ENV=$NODE_ENV
#ENTRYPOINT ["/usr/local/bin/npm", "start"]
#CMD [ "npm", "start"]
ENTRYPOINT ["sh", "npm", "start"]