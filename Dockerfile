FROM ubi9:latest as BUILD
WORKDIR /usr/src/app
COPY hextris ./hextris

FROM ubi9/nginx-120
COPY nginx.conf /etc/nginx/nginx.conf
WORKDIR /code
COPY --from=BUILD /usr/src/app/hextris .
EXPOSE 8080:8080
CMD ["nginx", "-g", "daemon off;"]
