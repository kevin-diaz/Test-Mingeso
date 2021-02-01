FROM node

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080/tcp

CMD ["npm","run","dev"]
