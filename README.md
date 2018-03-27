# docker-nginx-check-ssl

### Build
```
docker build . -t tsunokawa/nginx-check-ssl
```

### Setup
SSL証明書と鍵ファイルを`certs/`ディレクトリに以下のファイル名で配置します。

- 証明書:ドメイン名.crt
- 秘密鍵:ドメイン名.key


### Run
`NGINX_SSL_DOMAIN=`にドメイン名を渡してコンテナを起動します。

```
docker run -d \
-p 80:80 \
-p 443:443 \
-v `PWD`/conf.d:/etc/nginx/conf.d \
-v `PWD`/certs:/etc/nginx/certs \
-v `PWD`/log:/var/log/nginx \
-e NGINX_SSL_DOMAIN="example.com" \
tsunokawa/nginx-check-ssl
```

