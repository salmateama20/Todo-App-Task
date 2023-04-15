FROM jenkins/jenkins:lts-jdk11
USER root
RUN apt-get update && apt-get install -y xvfb libgtk2.0-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth curl git && rm -rf /var/lib/apt/lists/*
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get update && apt-get install -y nodejs

