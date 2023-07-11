FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.ypnnhr1.mongodb.net
ENV MONGODB_USERNAME mongouser1
ENV MONGODB_PASSWORD yvfhNHyTFfhd77L5

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]