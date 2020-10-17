FROM fedora

RUN yum update -y \
    && \
    yum install -y \
      gdal \
      gdal-devel \
      git \
      gcc \
      gcc-c++ \
      python3-devel \
    && \
    yum clean all \
    && \
    mkdir /root/repo \
    && :
  
WORKDIR /root
COPY . repo

RUN cd repo \
    && \
    pip3 install . \
    && \
    cd /root \
    && :
