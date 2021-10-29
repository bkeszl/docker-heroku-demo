FROM node:latest
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
RUN npm install -g serve
RUN npm run build
RUN node --version
CMD ["serve", "build"]