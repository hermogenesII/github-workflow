FROM ubuntu
RUN apt-get update
RUN apt-get install -y nodejs npm
COPY . /app
WORKDIR /app
RUN npm i
RUN npm run build
EXPOSE 3000
CMD ["npx", "run", "start"]