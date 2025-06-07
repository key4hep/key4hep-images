FROM gitlab-registry.cern.ch/linuxsupport/alma9-base

# epel-release and parallel needed for the validation
# wget needed for some tests
RUN dnf update -y && \
    # dnf groupinstall -y "Development Tools" && \
    dnf install -y \
                   # Needed for compiling
                   glibc-headers glibc-devel \
                   # Requirements
                   mesa-libGL mesa-libGL-devel mesa-libGLU mesa-libGLU-devel krb5-devel \
                   # Tools
                   git patch vim wget epel-release \
                   # For fetching commits of packages
                   python3-requests python3-yaml \
                   # Needed by Spack
                   bzip2 unzip \
                   # Needed by LCG
                   zlib-devel libuuid-devel && \
    # For building and CI
    dnf install -y ccache mold && \
    # dnf remove -y NetworkManager xorg-x11-fonts-ISO8859-1-100dpi dejavu-sans-fonts selinux-policy && \
    # We don't need valgrind but mesa-libGL-devel depends on it
    for pkg in valgrind valgrind-devel gl-manpages git-core-doc grub2-common grub2-efi-x64 grub2-tools-minimal emacs-filesystem systemd systemd-udev systemd-libs systemd-pam llvm-libs; do \
        rpm -e --nodeps "$pkg" || true; \
    done && \
    dnf clean all

CMD ["/bin/bash"]
