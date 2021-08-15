###############################################################
# Dockerfile to build container images for CID/MICC
# Based on ubuntu
################################################################

FROM ubuntu:latest

# File Author / Maintainer
LABEL maintainer="Naoto Kubota <n.kubota@bioreg.kyushu-u.ac.jp>"

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies first
RUN apt-get -qq update && apt-get -qq -y install openjdk-8-jdk r-base wget less vim

# Install GEM (CID)
RUN wget http://groups.csail.mit.edu/cgs/gem/download/gem.v3.4.tar.gz && \
    tar -zxvf gem.v3.4.tar.gz && \
    rm -rf gem.v3.4.tar.gz
    
# Install MICC
RUN R -e "install.packages('VGAM')" && \
    wget http://bioinfo.au.tsinghua.edu.cn/member/xwwang/MICCusage/MICC_1.0.tar.gz && \
    R CMD INSTALL MICC_1.0.tar.gz && \
    rm -rf MICC_1.0.tar.gz

# Set working directory
WORKDIR /home
