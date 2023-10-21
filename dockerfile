FROM node:alpine3.18

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

# A la siguiente variable de entorno le estamos poniendo un valor por default.
# ENV MONGO_USERNAME=${MONGO_USERNAME:-LeoRamos}
# ENV MONGO_PASSWORD=iteiRz5BiXdP1xXj
# ENV MONGO_DB=VileanDevelopment
# ENV MONGO_CLUSTER=leotravels.fvx66ih

ENV MONGO_USERNAME=${MONGO_USERNAME}
ENV MONGO_PASSWORD=${MONGO_PASSWORD}
ENV MONGO_DB=${MONGO_DB}
ENV MONGO_CLUSTER=${MONGO_CLUSTER}

EXPOSE 3000

CMD [ "npm", "start" ]