FROM ubuntu:16.04
MAINTAINER PHPFS <https://github.com/phpfs>

#General
RUN apt-get update && apt-get install -y curl git openssl ca-certificates python build-essential ruby

#Go
RUN (curl -s https://dl.google.com/go/go1.10.linux-amd64.tar.gz | tar -v -C /usr/local -xz) && mkdir /root/go
ENV GOPATH /root/go
ENV GOROOT /usr/local/go
ENV PATH /usr/local/go/bin:/root/go/bin:/usr/local/bin:$PATH

#NodeJS
RUN (curl -sL https://deb.nodesource.com/setup_8.x | bash -) && apt-get install -y nodejs

#CMD
WORKDIR /root
CMD ["/bin/bash"]
