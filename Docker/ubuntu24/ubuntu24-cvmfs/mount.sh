#!/bin/bash
pkill automount
cvmfs_config setup

exec "$@"
