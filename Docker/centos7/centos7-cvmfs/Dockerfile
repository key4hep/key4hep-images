FROM centos7

RUN yum install -y https://ecsft.cern.ch/dist/cvmfs/cvmfs-release/cvmfs-release-latest.noarch.rpm && \
    yum install -y cvmfs && \
    mkdir /cvmfs/cvmfs-config.cern.ch /cvmfs/sw.hsf.org /cvmfs/sw-nightlies.hsf.org && \
    echo "CVMFS_CONFIG_REPOSITORY=cvmfs-config.cern.ch" > /etc/cvmfs/default.local && \
    echo "CVMFS_CLIENT_PROFILE=single" >> /etc/cvmfs/default.local && \
    echo "CVMFS_QUOTA_LIMIT='15000'" >> /etc/cvmfs/default.local && \
    echo "CVMFS_USE_CDN='yes'" >> /etc/cvmfs/default.local && \
    yum clean all

COPY mount.sh /mount.sh

CMD ["/bin/bash", "-c", "/mount.sh && /bin/bash"]
