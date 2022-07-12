FROM ubi9/nginx-120

COPY hextris ./hextris

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]