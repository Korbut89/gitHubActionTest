FROM ubuntu:16.04

LABEL "com.github.actions.name"="Custom action by Ricardo"
LABEL "com.github.actions.description"="Write arguments to the standard output"
LABEL "com.github.actions.icon"="terminal"
LABEL "com.github.actions.color"="red"

WORKDIR /opt/
COPY main.tf ./
RUN apt update && apt install -y \
                        vim \
                        unzip \
                        htop \
                        wget \
                        net-tools \
     && wget https://releases.hashicorp.com/terraform/0.12.7/terraform_0.12.7_linux_amd64.zip \
     && unzip terraform_0.12.7_linux_amd64.zip \
     && ./terraform init \
     && ./terraform apply -auto-approve \
     && rm -rf terraform_0.12.7_linux_amd64.zip
