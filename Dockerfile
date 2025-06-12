FROM --platform=linux/amd64 ubuntu

RUN apt-get update && \
    apt-get install git-core gnupg flex bison build-essential zip curl zlib1g-dev libc6-dev-i386 x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig repo -y

USER 1000

RUN git config --global user.email "you@example.com" && \
    git config --global user.name "Your Name"

WORKDIR /home/ubuntu