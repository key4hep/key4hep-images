# How to build and push to gitlab
```
docker login gitlab-registry.cern.ch
docker build -t gitlab-registry.cern.ch/key4hep/k4-deploy/<image-name> .
docker push gitlab-registry.cern.ch/key4hep/k4-deploy/<image-name>
```
