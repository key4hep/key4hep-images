FROM ubuntu:22.04

RUN apt update -y && DEBIAN_FRONTEND=noninteractive apt install -y build-essential git python3 python3-pip vim unzip gfortran file curl pkg-config rsync tzdata
RUN pip3 install boto3 requests

CMD ["/bin/bash"]