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

ENV MONGO_USERNAME=LeoRamos
ENV MONGO_PASSWORD=iteiRz5BiXdP1xXj
ENV MONGO_DB=VileanDevelopment
ENV MONGO_CLUSTER=leotravels.fvx66ih

EXPOSE 3000

CMD [ "npm", "start" ]