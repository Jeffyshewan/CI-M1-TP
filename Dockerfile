FROM node:12.18.4

COPY package.json ./
COPY yarn.lock ./
RUN yarn global add node-gyp 
RUN yarn install

COPY src ./src
CMD yarn start