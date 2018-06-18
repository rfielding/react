FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y sudo
RUN apt-get install -y vim
RUN apt-get install -y curl
RUN apt-get install -y nodejs
RUN apt-get install -y build-essential libssl-dev
RUN apt-get install -y npm
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN sudo apt-get update && sudo apt-get install yarn
RUN apt-get install -y git
RUN apt-get install -y screen
RUN mkdir /root/mounted
WORKDIR /root
RUN npm install -g create-react-app
VOLUME /root/mounted
