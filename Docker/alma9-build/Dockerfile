FROM gitlab-registry.cern.ch/linuxsupport/alma9-base

RUN dnf update -y && dnf groupinstall -y "Development Tools" && dnf install -y which vim gfortran

CMD ["/bin/bash"]