FROM node

WORKDIR /app

COPY package*.json ./

RUN yarn

RUN npm install

COPY . .

EXPOSE 8080

CMD ["npm","run","dev"]
