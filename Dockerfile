FROM jenkins/jenkins:lts-jdk11
USER root
RUN apt-get update && apt-get install -y nodejs
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
