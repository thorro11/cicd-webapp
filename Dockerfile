FROM node:20.9.0-alpine
WORKDIR /app

COPY ./package.json ./yarn.lock .
RUN yarn install --frozen-lockfile

COPY . .

EXPOSE 3000

CMD ["yarn","start"]

