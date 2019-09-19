FROM nginx:stable

MAINTAINER Dmitry Shmelev, dmitry.shmelev@jetbrains.com

ENV PROXY_PASS="http://ifconfig.co"

COPY ./default.template /etc/nginx/conf.d/default.template
COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
