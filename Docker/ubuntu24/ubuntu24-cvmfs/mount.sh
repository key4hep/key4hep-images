#!/bin/bash
/usr/sbin/automount
# Seems to be needed only for Ubuntu 24
cvmfs_config probe

exec "$@"
