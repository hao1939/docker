# Run the cmd below to create an docker image
# sudo docker build -t hao1939/demo .

FROM ubuntu:14.04

# Some npm modules can't run as root, we need a normal user.
RUN adduser --disabled-password --gecos '' dev \
  && adduser dev sudo \
  && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER dev


RUN sudo apt-get update && sudo apt-get install -y \
  curl \
  git \
  --no-install-recommends && sudo rm -rf /var/lib/apt/lists/*

# We need to install the latest nodejs, old version npm won't work properly
RUN cd /tmp && \
  curl -O http://nodejs.org/dist/v0.12.0/node-v0.12.0-linux-x64.tar.gz && \
  tar -xvf node-v0.12.0-linux-x64.tar.gz && \
  rm node-v0.12.0-linux-x64.tar.gz && \
  sudo mkdir -p /opt/ && sudo mv node-v0.12.0-linux-x64 /opt/ && \
  echo '\n# Node.js\nexport PATH="$PATH:/opt/node-v0.12.0-linux-x64/bin/"' >> /home/dev/.bashrc


ENV PATH $PATH:/opt/node-v0.12.0-linux-x64/bin/
ENV HOME /home/dev
RUN npm -g install yo \
  bower \
  grunt-cli \
  gulp \
  generator-angular

RUN mkdir -p /home/dev/src
WORKDIR /home/dev/src
EXPOSE 9000
CMD ["grunt", "serve"]

