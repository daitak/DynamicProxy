FROM ubuntu:trusty
MAINTAINER daitak <daiki.takasao@gmail.com>
RUN apt-get update
RUN apt-get -y install nginx-extras lua-nginx-redis
COPY nginx.conf /etc/nginx/nginx.conf
VOLUME ["/var/log/nginx"]
EXPOSE 80
CMD ["/usr/sbin/nginx"]
