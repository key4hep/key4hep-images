ARG BASE_IMAGE=ghcr.io/key4hep/key4hep-images/ubuntu24:latest
FROM ${BASE_IMAGE}

RUN apt update && \
    apt install -y lsb-release && \
    wget https://ecsft.cern.ch/dist/cvmfs/cvmfs-release/cvmfs-release-latest_all.deb && \
    dpkg -i cvmfs-release-latest_all.deb && \
    rm -rf cvmfs-release-latest_all.deb && \
    apt update && \
    apt install -y cvmfs && \
    echo "CVMFS_CONFIG_REPOSITORY=cvmfs-config.cern.ch" > /etc/cvmfs/default.local && \
    echo "CVMFS_CLIENT_PROFILE=single" >> /etc/cvmfs/default.local && \
    echo "CVMFS_QUOTA_LIMIT='15000'" >> /etc/cvmfs/default.local && \
    echo "CVMFS_USE_CDN='yes'" >> /etc/cvmfs/default.local && \
    cvmfs_config setup || true && \
    apt clean &&\
    rm -rf /var/lib/apt/lists/*

COPY mount.sh /mount.sh

RUN chmod +x /mount.sh

ENTRYPOINT ["/mount.sh"]
CMD ["/bin/bash"]
