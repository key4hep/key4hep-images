FROM ubuntu:22.04

RUN apt update -y && DEBIAN_FRONTEND=noninteractive apt install -y build-essential git python3 python-pip vim unzip gfortran file curl pkg-config rsync tzdata
RUN pip install boto3

CMD ["/bin/bash"]