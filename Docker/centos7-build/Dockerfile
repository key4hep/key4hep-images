FROM gitlab-registry.cern.ch/linuxsupport/cc7-base

RUN yum update -y && yum groupinstall -y "Development Tools" && yum install -y epel-release python3 which vim python3-pip mesa-libGL mesa-libGL-devel mesa-libGLU mesa-libGLU-devel
RUN pip3 install boto3 requests

CMD ["/bin/bash"]