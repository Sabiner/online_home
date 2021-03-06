FROM sabiner/centos8:v2
MAINTAINER sabiner <sabiner.ge@gmail.com>
RUN mkdir -p /data/project/
RUN mkdir /data/project/Thoth
WORKDIR /data/project/Thoth
COPY . /data/project/Thoth
RUN yum install mysql-devel -y
RUN yum install python3-devel -y
RUN cd /data/project/Thoth/ && pip install -r requirements.txt
