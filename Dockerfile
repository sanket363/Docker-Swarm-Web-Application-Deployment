FROM centos:7
#update and install nginx section
RUN yum update -y
RUN yum install -y epel-release
RUN yum install -y nginx
#create path and add index.html
WORKDIR /usr/share/nginx/html

# Fix typo in file name
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

EXPOSE 80/tcp

CMD ["nginx", "-g", "daemon off;"]

