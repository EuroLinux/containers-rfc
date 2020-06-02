# EuroLinux Apache container image

A Dockerfile that produces a Docker Image for Apache  based on EuroLinux 7.7  [ https://en.euro-linux.com/]( https://en.euro-linux.com/ " https://en.euro-linux.com/")


## Apache version

The `master` branch currently Apache 2.4

## Why use a EuroLinux  based image?

Our images are automatically rebuilt (once a month). Constantly rebuilt images are:

- More secure.

- Have predictable updates.

- The change process is more stable.

- The infrastructure/scripts/workflows for ad-hoc fixes (ex. critical security) are in place.

For more information please visit[ https://en.euro-linux.com/]( https://en.euro-linux.com/ " https://en.euro-linux.com/")

## Usage

```
$ docker pull eurolinux/apache

```

### Run the image

To run the image and bind to host port 80:

```
$ docker run -d --name eurolinux7apache -p 80:80 -v "$PWD":/var/www/html/ eurolinux/apache


```

### Configuration

To change the configuration of the server, first get the default configuration from the container:

```
$ docker run --rm eurolinux/apache  cat /etc/httpd/conf/httpd.conf > m_httpd.conf

```

Make changes to the configuration file (m_httpd.conf) and create the Dockerfile file


FROM eurolinux/apache

COPY ./m-httpd.conf /etc/httpd/conf/httpd.conf


and run the build process

```
docker build . -t you-tag-name

```

