FROM ubuntu:16.04
LABEL "com.github.actions.name"="Action for cypress"
LABEL "com.github.actions.icon"="terminal"
LABEL "com.github.actions.color"="red"

RUN mkdir /opt/cypress \
 && apt update && apt install -y \
                               vim \
                               htop \
                               nodejs \
                               npm \
&& cd /opt/cypress \
&& npm init \
&& npm install cypress --save-dev \
&& ./node_modules/.bin/cypress run
                                
                               
                              
