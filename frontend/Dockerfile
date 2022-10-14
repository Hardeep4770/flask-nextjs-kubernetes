FROM node:alpine
COPY ./app/package.json ./app/package.json
COPY ./app/package-lock.json ./app/package-lock.json
COPY ./app ./app
WORKDIR /app
RUN npm i
CMD ["npm", "run", "dev"]