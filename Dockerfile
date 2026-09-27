FROM node:22-alpine

RUN apk update && apk upgrade --no-cache

WORKDIR /app
COPY package*.json ./
RUN npm install --production
COPY . .
EXPOSE 3000
CMD ["node", "index.js"]
