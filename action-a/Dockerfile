FROM ubuntu:16.04

LABEL "com.github.actions.name"="Hello World"
LABEL "com.github.actions.description"="Write arguments to the standard output"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

EXPOSE 4230
WORKDIR /opt/main
RUN apt update && apt install -y apt-utils vim subversion libapache2-mod-svn libsvn-dev npm nginx curl git sudo && curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash - && apt-get install -y nodejs && npm install yarn -g && svn checkout svn://10.90.23.8/Framerx/Web/ /opt/main/ && echo 'daemon off;' >> /etc/nginx/nginx.conf


ADD entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
