FROM centos:7
RUN yum update -y
RUN yum install vim -y
RUN yum install httpd -y
RUN echo "<h1> Hellow World </h1>" > /var/www/html/index.htm
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]