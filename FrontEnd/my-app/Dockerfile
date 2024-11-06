FROM node:20-alpine
WORKDIR /app
COPY package.json ./
RUN yarn install --production && yarn cache clean
COPY . .
EXPOSE 80
CMD ["yarn", "start", "--", "--host", "http://0.0.0.0"]
