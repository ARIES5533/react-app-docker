FROM node:current-alpine
WORKDIR /APP

COPY package*.json ./
RUN yarn install

COPY . .
CMD ["yarn", "start"]