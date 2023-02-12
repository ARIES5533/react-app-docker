FROM node:current-alpine
WORKDIR /APP

COPY package*.json ./
RUN yarn install

EXPOSE 3000

COPY . .
CMD ["yarn", "start"]