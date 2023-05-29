FROM gitlab-registry.cern.ch/linuxsupport/cc7-base

RUN yum update -y && yum groupinstall -y "Development Tools" && yum install -y epel-release python3 which vim python3-pip
pip install boto3

CMD ["/bin/bash"]