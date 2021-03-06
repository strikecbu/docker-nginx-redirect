FROM nginx:alpine

ADD run.sh /run.sh
ADD default.conf /etc/nginx/conf.d/default.conf
ADD nginx.crt /etc/nginx/nginx.crt
ADD nginx.key /etc/nginx/nginx.key

RUN chmod +x /run.sh
EXPOSE 443

CMD ["/run.sh"]
