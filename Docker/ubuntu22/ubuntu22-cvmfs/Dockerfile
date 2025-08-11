ARG REGISTRY=ghcr.io
ARG REPOSITORY=key4hep/key4hep-images
ARG BRANCH=main
FROM ${REGISTRY}/${REPOSITORY}/ubuntu22:${BRANCH}

RUN apt update && \
    apt install -y lsb-release && \
    wget https://cvmrepo.s3.cern.ch/cvmrepo/apt/cvmfs-release-latest_all.deb && \
    dpkg -i cvmfs-release-latest_all.deb && \
    rm -rf cvmfs-release-latest_all.deb && \
    apt update && \
    apt install -y cvmfs && \
    mkdir /cvmfs/cvmfs-config.cern.ch /cvmfs/sw.hsf.org /cvmfs/sw-nightlies.hsf.org && \
    echo "CVMFS_CLIENT_PROFILE=single" >> /etc/cvmfs/default.local && \
    echo "CVMFS_QUOTA_LIMIT='15000'" >> /etc/cvmfs/default.local && \
    echo "CVMFS_USE_CDN='yes'" >> /etc/cvmfs/default.local && \
    apt clean &&\
    rm -rf /var/lib/apt/lists/*

COPY mount.sh /mount.sh

CMD ["/bin/bash", "-c", "/mount.sh && /bin/bash"]
