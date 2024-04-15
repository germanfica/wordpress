# Etapa de construcción
# FROM node:18 as build-step
# WORKDIR /app
# COPY package.json ./
# RUN npm install
# COPY . .
# RUN npm run build

# Etapa de ejecución
FROM nginx:latest
#COPY --from=build-step /app/dist/personal/* /usr/share/nginx/html
COPY ./nginx-custom.conf /etc/nginx/conf.d/default.conf
COPY localhost.crt /etc/nginx/ssl/
COPY localhost.key /etc/nginx/ssl/
