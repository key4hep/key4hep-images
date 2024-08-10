if mount | grep -q cvmfs; then
  echo "CVMFS already mounted"
  echo "/mount.sh does not need to be run anymore"
  exit 0
fi
set -e
mount -t cvmfs cvmfs-config.cern.ch /cvmfs/cvmfs-config.cern.ch
mount -t cvmfs sw.hsf.org /cvmfs/sw.hsf.org
mount -t cvmfs sw-nightlies.hsf.org /cvmfs/sw-nightlies.hsf.org
