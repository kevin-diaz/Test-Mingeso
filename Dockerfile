FROM node

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 1200/api/v1

CMD ["npm","run","dev"]
