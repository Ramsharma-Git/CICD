FROM redhat/ubi9
RUN yum install -y httpd
RUN touch /hyy
EXPOSE 80
COPY . /var/www/html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
