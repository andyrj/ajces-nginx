FROM andyj/ajces-base:latest
RUN apk add --update openssl nginx && rm -rf /var/cache/apk/*

RUN ln -s /dev/stdout /var/log/nginx/access.log
RUN ln -s /dev/stderr /var/log/nginx/error.log
COPY dhparams.pem /etc/ssl/dhparams.pem
COPY nginx/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx"]
