FROM node:14-alpine

WORKDIR /app

COPY package.json .

RUN npm config set registry http://registry.npmjs.org/

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "node", "users-app.js" ]
