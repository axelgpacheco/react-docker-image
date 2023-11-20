FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./


RUN yarn  install

COPY . .


RUN yarn dev run 


EXPOSE 3000

CMD ["yarn", "run", "dev"]