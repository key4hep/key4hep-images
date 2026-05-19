ARG BASE_IMAGE=ghcr.io/key4hep/key4hep-images/ubuntu26:latest
FROM ${BASE_IMAGE}

# Ubuntu 26.04 ships libfuse3-4 instead of libfuse3-3. The cvmfs ubuntu22 packages
# depend on libfuse3-3, so we install all cvmfs deps via apt, create a compat symlink,
# download the cvmfs debs and force-install them bypassing the libfuse3-3 dep check.
RUN apt update && \
    apt install -y lsb-release fuse3 gawk psmisc lsof attr gdb uuid-dev uuid adduser autofs && \
    ln -sf /usr/lib/x86_64-linux-gnu/libfuse3.so.4 /usr/lib/x86_64-linux-gnu/libfuse3.so.3 && \
    wget https://ecsft.cern.ch/dist/cvmfs/cvmfs-release/cvmfs-release-latest_all.deb && \
    dpkg -i cvmfs-release-latest_all.deb && \
    rm -rf cvmfs-release-latest_all.deb && \
    apt update && \
    apt-get download cvmfs cvmfs-libs cvmfs-fuse3 cvmfs-config-default && \
    dpkg --ignore-depends=libfuse3-3 -i cvmfs-config-default_*.deb cvmfs-libs_*.deb cvmfs-fuse3_*.deb cvmfs_*.deb && \
    rm -f cvmfs*.deb && \
    echo "CVMFS_CONFIG_REPOSITORY=cvmfs-config.cern.ch" > /etc/cvmfs/default.local && \
    echo "CVMFS_CLIENT_PROFILE=single" >> /etc/cvmfs/default.local && \
    echo "CVMFS_QUOTA_LIMIT='15000'" >> /etc/cvmfs/default.local && \
    echo "CVMFS_USE_CDN='yes'" >> /etc/cvmfs/default.local && \
    cvmfs_config setup || true && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

COPY mount.sh /mount.sh

RUN chmod +x /mount.sh

ENTRYPOINT ["/mount.sh"]
CMD ["/bin/bash"]
