# EuroLinux Nginx container image

A Dockerfile that produces a Docker Image for Nginx  based on EuroLinux 7.7  [ https://en.euro-linux.com/]( https://en.euro-linux.com/ " https://en.euro-linux.com/")


## Nginx version

The `master` branch currently Nginx

## Why use a EuroLinux  based image?

Our images are automatically rebuilt (once a month). Constantly rebuilt images are:

- More secure.

- Have predictable updates.

- The change process is more stable.

- The infrastructure/scripts/workflows for ad-hoc fixes (ex. critical security) are in place.

For more information please visit[ https://en.euro-linux.com/]( https://en.euro-linux.com/ " https://en.euro-linux.com/")

## Usage

```
$ docker pull eurolinux/nginx

```

### Run the image

To run the image and bind to host port 80:

```
$ docker run -d --name eurolinux7nginx -p 80:80 -v "$PWD":/usr/share/nginx/html eurolinux/nginx


```


