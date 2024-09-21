FROM almalinux:latest
RUN yum -y update && yum -y install \
                   httpd \
                   openssh-server \
                   wget \
                   vim \
                   lsof
EXPOSE 80

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
