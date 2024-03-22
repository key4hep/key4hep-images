docker build -t gitlab-registry.cern.ch/key4hep/k4-deploy/centos7 centos7-build
docker build -t gitlab-registry.cern.ch/key4hep/k4-deploy/centos7-cvmfs centos7-cvmfs
docker push gitlab-registry.cern.ch/key4hep/k4-deploy/centos7
docker push gitlab-registry.cern.ch/key4hep/k4-deploy/centos7-cvmfs

