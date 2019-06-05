FROM node:alpine

WORKDIR /usr/app

COPY package*.json ./
RUN npm install --save yarn-install
RUN yarn

copy . .

EXPOSE 3335

CMD ["yarn", "dev"]