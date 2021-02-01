FROM node

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 1200/tcp

CMD ["npm","run","dev"]
