FROM node:12.22.12-alpine

WORKDIR /app/
COPY . /app/

RUN yarn && yarn build

ENV PORT=80
ENV NODE_ENV=production
CMD [ "node", "server.js" ]
EXPOSE 80
