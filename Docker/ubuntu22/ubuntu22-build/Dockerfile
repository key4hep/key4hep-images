FROM ubuntu:22.04

# tzdata is needed for setting the timezones; it's used to give the nightlies the right time and date
RUN apt update -y && \
    apt upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
    build-essential git python3 python3-pip python3-requests python3-yaml vim unzip gfortran file curl wget pkg-config rsync tzdata libgl1-mesa-glx libgl1-mesa-dev libglu1-mesa libglu1-mesa-dev libkrb5-dev ccache mold strace && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]