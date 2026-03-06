#!/bin/bash
/usr/sbin/automount || true

# Wait for CVMFS to be accessible (autofs mounts lazily)
for i in $(seq 1 12); do
    cvmfs_config probe && break
    echo "CVMFS probe failed, retrying ($i/12)..."
    sleep 5
done

exec "$@"
