FROM node:alpine
WORKDIR /opt/app
COPY . ./
RUN npm install
EXPOSE 3000
CMD ["node", "index.js"]