FROM node
WORKDIR /app
COPY ./package.json ./
COPY ./vite.config.ts ./
RUN npm install
COPY ./ ./
RUN npm run dev