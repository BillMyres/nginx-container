# use the latest from nginx
FROM nginx:latest

# copy over converting script
COPY ./convert-html.sh /docker-entrypoint.d/convert-html.sh
