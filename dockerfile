FROM centos:7
MAINTAINER Gutemberg Felipe de Oliveira <gut.mob@gmail.com>

RUN yum -y install epel-release
RUN yum -y install python-pip wget unzip zip
RUN pip install awscli
RUN wget https://releases.hashicorp.com/packer/1.3.3/packer_1.3.3_linux_amd64.zip
RUN unzip packer_1.3.3_linux_amd64.zip
RUN mv packer /usr/local/bin/
RUN wget https://releases.hashicorp.com/terraform/0.11.14/terraform_0.11.14_linux_amd64.zip
RUN unzip terraform_0.11.14_linux_amd64.zip
RUN mv terraform /usr/local/bin/
RUN mkdir -p .aws
