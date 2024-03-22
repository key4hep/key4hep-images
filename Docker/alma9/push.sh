docker build -t gitlab-registry.cern.ch/key4hep/k4-deploy/alma9 alma9
docker build -t gitlab-registry.cern.ch/key4hep/k4-deploy/alma9-cvmfs alma9-cvmfs
docker push gitlab-registry.cern.ch/key4hep/k4-deploy/alma9
docker push gitlab-registry.cern.ch/key4hep/k4-deploy/alma9-cvmfs

