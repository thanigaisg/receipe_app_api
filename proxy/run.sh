#!/bin/sh

set -e

envsubst < /etc/nginx/default.conf.tpl > /etc/nginx/conf.d/default.conf
docker run -d -p 8080:80 nginx nginx -g 'daemon off;'
