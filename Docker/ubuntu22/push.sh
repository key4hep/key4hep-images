docker build -t gitlab-registry.cern.ch/key4hep/k4-deploy/ubuntu22 ubuntu22-build
docker build -t gitlab-registry.cern.ch/key4hep/k4-deploy/ubuntu22-cvmfs ubuntu22-cvmfs
docker push gitlab-registry.cern.ch/key4hep/k4-deploy/ubuntu22
docker push gitlab-registry.cern.ch/key4hep/k4-deploy/ubuntu22-cvmfs

