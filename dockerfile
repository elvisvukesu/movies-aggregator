FROM node:lts-slim
RUN mkdir /app
WORKDIR /app/
COPY . .
RUN npm install serverless && npm install && npm run build
EXPOSE 3000
CMD npm start 
