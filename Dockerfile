FROM node:8-alpine

# change directory to /srv/app
WORKDIR /srv/app

# copy copy files from local
COPY ./src/package.json ./src/package-lock.json ./

# run command 
RUN yarn install

# copy other files to their directories
COPY ./src/* ./
ADD ./src/views ./views
ADD ./src/public ./public

ENTRYPOINT [ "node", "server.js" ]