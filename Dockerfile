FROM node:14.16.1
WORKDIR /

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

ENV NODE_ENV=production

COPY . .

RUN npm run build

CMD [ "node", "./dist" ]
