# Readme

This yocto-based buildsystem uses a Docker container for the build of a Raspberry Pi image.
The Dockerfile is located in folder `docker` and based on `crops/poky:ubuntu-16.04` (https://hub.docker.com/r/crops/poky/).
The Docker image contains all tools to build with the OpenEmbedded/Yocto buildsystem. The workspace is created in a mounted folder of the host.
The buildsystem uses the Google repo tool to setup the Yocto layer structure (i.e. checkout all repos).

# Usage

Build the Docker image:
```
cd docker
./manage-build-container.sh build
# Run the Docker container
./manage-build-container.sh run
```

Start a yocto build (inside the running Docker container):
```
repo init -u https://buildsystem.git
repo sync
. setup-environment
bitbake rpi-hwup-image
```
