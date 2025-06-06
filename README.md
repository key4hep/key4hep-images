This repository contains the Dockerfiles to build the images that are used for
building the key4hep stack, as well as scripts for making building the images
and pushing them easier.

# Images
At the moment, these are the images that are built:
- `alma9` and `alma9-cvmfs`. `alma9` is used to build the Key4hep stack while
  `alma9-cvmfs` also has CVMFS installed.
- `ubuntu22` and `ubuntu22-cvmfs`, same as above for Ubuntu 22.04.
- `ubuntu24` and `ubuntu24-cvmfs`, same as above for Ubuntu 24.04.

The images are deployed to `gitlab-registry.cern.ch` and `ghcr.io` and can be
found under:
```
gitlab-registry.cern.ch/key4hep/k4-deploy/<image-name>
```
and
```
ghcr.io/key4hep/key4hep-images/<image-name>
```
and on `/cvmfs/unpacked.cern.ch`
```
/cvmfs/unpacked.cern.ch/gitlab-registry.cern.ch/key4hep/k4-deploy/<image-name>\:latest
```
where `<image-name>` is `alma9`, `alma9-cvmfs`, etc.



# How to build and push to gitlab

``` bash
docker login gitlab-registry.cern.ch
docker build -t gitlab-registry.cern.ch/key4hep/k4-deploy/<image-name> .
docker push gitlab-registry.cern.ch/key4hep/k4-deploy/<image-name>
```

where `<image-name>` can be `alma9-build` or `ubuntu-build`.

# How to build and push to Github

``` bash
docker login ghcr.io
docker build -t ghcr.io/key4hep/key4hep-images/<image-name> .
docker push ghcr.io/key4hep/key4hep-images/<image-name>
```

where for the login we have to use our Github username and for the password a
classic token (refined is not supported at the moment of writing) with the
permissions `read:packages`, `write:packages` and `delete:packages`.
