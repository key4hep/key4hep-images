FROM gitlab-registry.cern.ch/linuxsupport/alma9-base AS build

# epel-release and parallel needed for the validation
# wget needed for some tests
# Don't install documentation or translations other than English
RUN echo "tsflags=nodocs" >> /etc/dnf/dnf.conf && \
    echo "%_install_langs C:en:en_US:en_US.UTF-8" > /etc/rpm/macros.image-language-conf && \
    dnf update -y && \
    # dnf groupinstall -y "Development Tools" && \
    dnf install -y \
                   # Needed for compiling
                   glibc-headers glibc-devel diffutils \
                   # Requirements
                   mesa-libGL mesa-libGL-devel mesa-libGLU mesa-libGLU-devel krb5-devel \
                   # Needed by ROOT's X11 graphics (libGX11)
                   libXpm \
                   # Tools
                   autoconf automake git make patch vim wget epel-release \
                   # For fetching commits of packages
                   python3-requests python3-yaml \
                   # Needed by Spack
                   bzip2 unzip \
                   # Needed by LCG
                   zstd libzstd-devel zlib-devel libuuid-devel lz4-devel \
                   # Useful to have
                   strace \
                   # Needed for LCG
                   expat expat-devel motif motif-devel && \
    # For building and CI
    dnf install -y ccache mold && \
    # Not needed in a container (and not present in the AlmaLinux 10 base image)
    dnf remove -y NetworkManager NetworkManager-libnm kexec-tools && \
    # Keep systemd-libs for ROOT's XRootD plugin.
    # We don't need valgrind but mesa-libGL-devel depends on it
    for pkg in valgrind valgrind-devel gl-manpages git-core-doc grub2-common grub2-efi-x64 grub2-tools-minimal emacs-filesystem systemd systemd-udev systemd-pam kbd kbd-misc kbd-legacy; do \
        rpm -e --nodeps "$pkg" || true; \
    done && \
    dnf clean all && \
    rm -rf /var/cache/dnf /usr/share/doc/* /usr/share/man/* /usr/share/info/* && \
    find /usr/share/locale -mindepth 1 -maxdepth 1 -type d ! -name 'en*' -exec rm -rf {} +

# Squash the layers so that files overwritten by dnf update or removed above
# are not kept in the base image layer
FROM scratch
COPY --from=build / /

CMD ["/bin/bash"]
