FROM ubuntu:24.04

# tzdata is needed for setting the timezones; it's used to give the nightlies the right time and date
RUN apt update -y && \
    apt upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
    build-essential git python3 python3-pip vim unzip gfortran file curl wget pkg-config rsync tzdata libgl1-mesa-dev libglu1-mesa libglu1-mesa-dev libkrb5-dev ccache mold strace \
    python3-boto3 python3-requests python3-yaml && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]