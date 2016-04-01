FROM alpine:latest
RUN apk add --update openssl nginx && rm -rf /var/cache/apk/*

ADD https://support.cloudflare.com/hc/en-us/article_attachments/201243967/origin-pull-ca.pem /etc/ssl/certs/cloudflar.crt
COPY dhparams.pem /etc/ssl/dhparams.pem
COPY nginx/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
