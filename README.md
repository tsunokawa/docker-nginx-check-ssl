# docker-nginx-check-ssl

### Build
```
docker build . -t tsunokawa/nginx-check-ssl
```

### Run
```
docker run -d -p 80:80 -p 443:443 -v `PWD`/conf.d:/etc/nginx/conf.d -v `PWD`/certs:/etc/nginx/certs -v `PWD`/log:/var/log/nginx -e NGINX_SSL_DOMAIN="example.com" tsunokawa/nginx-check-ssl
```

