FROM harness/delegate:latest

RUN apt-get update && apt-get install -y curl git unzip &&\
    mkdir ~/.ssh &&\
    chmod 600 ~/.ssh &&\
    touch ~/.ssh/known_hosts &&\
    chmod 600 ~/.ssh/known_hosts &&\
    ssh-keyscan github.com >> ~/.ssh/known_hosts &&\
    git clone https://github.com/bic-harness/initsh.git &&\
    cd initsh && bash init.sh
