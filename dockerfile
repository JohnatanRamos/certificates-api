FROM node:alpine as dev
WORKDIR /app
COPY package.json ./
COPY tsconfig.json ./
RUN npm install
COPY src/ ./src
RUN npm run build

FROM node:alpine as prod
WORKDIR /app
COPY package.json ./
RUN npm install --omit=dev
COPY --from=dev /app/dist ./dist/
EXPOSE 3000
CMD [ "node", "dist/main" ]