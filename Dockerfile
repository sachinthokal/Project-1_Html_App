FROM nginx:latest

WORKDIR /usr/share/nginx/html

RUN rm -rf *

COPY index.html .
COPY style.css .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]