# EuroLinux OpenJDK 11 container image

A Dockerfile that produces a Python 3.6  based on EuroLinux 7.7  [ https://en.euro-linux.com/]( https://en.euro-linux.com/ " https://en.euro-linux.com/")


## OpenJDK version

We use Java OpenJDK version 11 

## Why use a EuroLinux  based image?

Our images are automatically rebuilt (once a month). Constantly rebuilt images are:

- More secure.

- Have predictable updates.

- The change process is more stable.

- The infrastructure/scripts/workflows for ad-hoc fixes (ex. critical security) are in place.

For more information please visit[ https://en.euro-linux.com/]( https://en.euro-linux.com/ " https://en.euro-linux.com/")

## Usage

```
$ docker pull eurolinux/openjdk11

```

### Run the image

To run the image:

```
$ docker run -it eurolinux/openjdk11

```

