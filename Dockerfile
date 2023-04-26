FROM debian:bullseye-slim

RUN apt update && apt install build-essential \
                zlib1g-dev \
                libncurses5-dev \
                libgdbm-dev \
                libnss3-dev \
                libssl-dev \
                libreadline-dev \
                libffi-dev \
                libsqlite3-dev \
                wget \
                libbz2-dev \
                python3  \
                python3-pip -y

RUN pip3 install yamllint ansible-lint ansible "molecule[lint,docker]"
