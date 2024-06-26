FROM ubuntu:22.04

RUN apt-get update
RUN apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list
RUN apt-get update
RUN apt-get install -y docker-ce docker-ce-cli containerd.io

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["sh", "-c", "exec dockerd && exec /bin/bash"]
