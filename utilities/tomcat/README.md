# EuroLinux Tomcat container image

A Dockerfile that produces a Docker Image for Tomcat  based on EuroLinux 7.7  [ https://en.euro-linux.com/]( https://en.euro-linux.com/ " https://en.euro-linux.com/")


## Why use a EuroLinux  based image?

Our images are automatically rebuilt (once a month). Constantly rebuilt images are:

- More secure.

- Have predictable updates.

- The change process is more stable.

- The infrastructure/scripts/workflows for ad-hoc fixes (ex. critical security) are in place.

For more information please visit[ https://en.euro-linux.com/]( https://en.euro-linux.com/ " https://en.euro-linux.com/")

## Usage

```
$ docker pull eurolinux/tomcat

```

### Run the image

To run the image and bind to host port 8080: (put the war file into a local directory)

```
$ docker run -d --name eurolinux7tomcat -p 8080:8080 -v "$PWD":/usr/share/tomcat/webapps eurolinux/tomcat

```
Sample applications can be found in https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/ :)

