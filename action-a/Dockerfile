FROM ubuntu:16.04
EXPOSE 4230
WORKDIR /opt/main
RUN apt update && apt install -y apt-utils vim subversion libapache2-mod-svn libsvn-dev npm nginx curl git sudo && curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash - && apt-get install -y nodejs && npm install yarn -g && svn checkout svn://10.90.23.8/Framerx/Web/ /opt/main/ && echo 'daemon off;' >> /etc/nginx/nginx.conf
