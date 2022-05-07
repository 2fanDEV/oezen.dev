# first stage
FROM node:lts-alpine3.14 AS oezendev-build
WORKDIR /vue_js_proj_oezen_dev
COPY . .
RUN npm i
RUN npm run build

# second stage
FROM nginx:alpine
COPY --from=oezendev-build /vue_js_proj_oezen_dev/dist /usr/share/nginx/html
COPY conf.d/ /etc/nginx/conf.d
EXPOSE 80
EXPOSE 443