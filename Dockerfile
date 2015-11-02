FROM alpine:latest
RUN apk add --update openssl nginx && rm -rf /var/cache/apk/*

ADD https://origin-pull.cloudflare.com/ /etc/ssl/certs/cloudflare.crt

COPY dhparams.pem /etc/ssl/dhparams.pem
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
