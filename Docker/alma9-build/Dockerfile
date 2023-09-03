FROM gitlab-registry.cern.ch/linuxsupport/alma9-base

# epel-release and parallel needed for the validation
RUN dnf update -y && dnf groupinstall -y "Development Tools" && dnf install -y vim gfortran python3-pip epel-release mesa-libGL mesa-libGL-devel mesa-libGLU mesa-libGLU-devel
RUN dnf install -y parallel
RUN pip install boto3 requests

CMD ["/bin/bash"]