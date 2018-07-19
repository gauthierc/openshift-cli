# OpenShift-Cli - Docker Image

## Summary

- A Docker image for the oc command line tool, used to control Openshift based on alpine.

## To build the Docker image

- Build the image using docker
```bash
$ docker build -t openshift-cli .
```
- Run the container
```bash
$ docker run --rm -it openshift-cli oc version
```

## Install image from Docker Hub

```bash
$ docker pull gauthierc/openshift-cli
```
