FROM alma9

RUN dnf install -y https://ecsft.cern.ch/dist/cvmfs/cvmfs-release/cvmfs-release-latest.noarch.rpm && \
    dnf install -y cvmfs && \
    echo "CVMFS_CONFIG_REPOSITORY=cvmfs-config.cern.ch" > /etc/cvmfs/default.local && \
    echo "CVMFS_CLIENT_PROFILE=single" >> /etc/cvmfs/default.local && \
    echo "CVMFS_QUOTA_LIMIT='15000'" >> /etc/cvmfs/default.local && \
    echo "CVMFS_USE_CDN='yes'" >> /etc/cvmfs/default.local && \
    cvmfs_config setup || true && \
    dnf clean all

COPY mount.sh /mount.sh

ENTRYPOINT ["/bin/sh", "-c", "/mount.sh"]
CMD ["/bin/bash"]
