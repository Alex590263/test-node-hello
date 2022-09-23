FROM ubuntu:22.04
RUN apt update
RUN apt install -y software-properties-common git apt-transport-https ca-certificates curl software-properties-common
RUN apt install -y npm
CMD git clone https://github.com/Alex590263/test-node-hello && cd "/ test-node-hello" && npm start
EXPOSE 3000
