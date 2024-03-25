FROM node:10-apine as build-step

RUN mkdir -p /app

WORKDIR /app

COPY package.json /app/

#COPY . .

RUN npm install

COPY . /app

RUN npm install

EXPOSE 4200

CMD ["ng", "serve", "--host", "0.0.0.0"]
