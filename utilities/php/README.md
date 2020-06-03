# EuroLinux PHP container image

A Dockerfile that produces a Docker Image for PHP  based on EuroLinux 7.7  [ https://en.euro-linux.com/]( https://en.euro-linux.com/ " https://en.euro-linux.com/")


## Why use a EuroLinux  based image?

Our images are automatically rebuilt (once a month). Constantly rebuilt images are:

- More secure.

- Have predictable updates.

- The change process is more stable.

- The infrastructure/scripts/workflows for ad-hoc fixes (ex. critical security) are in place.

For more information please visit[ https://en.euro-linux.com/]( https://en.euro-linux.com/ " https://en.euro-linux.com/")

## Usage

```
$ docker pull eurolinux/php

```

### Run the image

To run the image:

```
$ docker run -it --rm --name el7-php-script eurolinux/php

```

Or put the script in working folder and run the image

```
docker run -it --rm --name el7-php-script -v "$PWD":/my_php -w /my_php eurolinux/php php test-script.php

```
