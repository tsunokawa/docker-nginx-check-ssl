FROM centos:latest

RUN yum clean all && \
    yum -y update && \
    yum -y install http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm && \
    yum -y install --enablerepo=nginx nginx && \
    yum -y install gettext && \
    yum clean all

WORKDIR /etc/nginx
ENV NGINX_SSL_DOMAIN=example.com
VOLUME ["/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx"]
CMD /usr/bin/envsubst < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf && /usr/sbin/nginx -g 'daemon off;'
EXPOSE 80
EXPOSE 443
