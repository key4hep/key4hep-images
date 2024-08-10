docker build -t gitlab-registry.cern.ch/key4hep/k4-deploy/ubuntu24 ubuntu24-build
docker build -t gitlab-registry.cern.ch/key4hep/k4-deploy/ubuntu24-cvmfs ubuntu24-cvmfs
docker push gitlab-registry.cern.ch/key4hep/k4-deploy/ubuntu24
docker push gitlab-registry.cern.ch/key4hep/k4-deploy/ubuntu24-cvmfs

