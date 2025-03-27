FROM node:22-alpine
WORKDIR /app
COPY package*.json ./
RUN npm i
COPY . .
RUN npm run build 
ENV PORT=3000
EXPOSE 3000 
CMD ["npx", "run", "start"]