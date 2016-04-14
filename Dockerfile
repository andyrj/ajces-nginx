FROM andyj/ajces-base:latest
RUN apk add --update openssl nginx && rm -rf /var/cache/apk/*

COPY dhparams.pem /etc/ssl/dhparams.pem
COPY nginx/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx"]
