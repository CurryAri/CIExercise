FROM nginx
COPY ./tompencil.jpeg /usr/share/nginx/html
COPY ./index3.html  /usr/share/nginx/html/index.html
