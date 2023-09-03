FROM ubuntu:22.04

RUN apt update -y && DEBIAN_FRONTEND=noninteractive apt install -y build-essential git python3 python3-pip vim unzip gfortran file curl pkg-config rsync tzdata libgl1-mesa-glx libgl1-mesa-dev libglu1-mesa libglu1-mesa-dev
RUN pip3 install boto3 requests

CMD ["/bin/bash"]