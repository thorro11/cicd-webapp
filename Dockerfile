FROM node:20.9.0-alpine
WORKDIR /app

COPY ./webapp/package.json ./webapp/yarn.lock .
RUN yarn install --frozen-lockfile

COPY ./webapp .

EXPOSE 3000

CMD ["yarn","start"]

