#!/bin/bash
/usr/sbin/automount || true
# Seems to be needed only for Ubuntu 24
cvmfs_config probe

exec "$@"
