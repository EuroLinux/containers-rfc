# containers-rfc

This is the main repository for Request for Change for EuroLinux-produced Container
Images/Docker Images. It also contains basic documentation/statements about images including:

- README.md is sometimes used by container registries
- Dockerfile/Containerfile that was used to create the image
- conf.sh that is used to name and tag (version) our container images

RFC should be made with an issue. It allows an open process that any developer
with a GitHub account can participate.

## Currently Supported Base Images:

- EuroLinux 6 - provided by [EuroLinux 6 ELS](https://en.euro-linux.com/eurolinux/euroels/)
- EuroLinux 7
- EuroLinux 8
- EuroLinux 9
- CentOS 7
- CentOS Stream 8
- CentOS Stream 9
- Oracle Linux 7
- Oracle Linux 8
- Oracle Linux 9
- AlmaLinux 8
- AlmaLinux 9
- RockyLinux 8
- RockyLinux 9
- Scientific Linux 7

## Legacy Base Images:

None ATM.

## Issues
Please use templates. If there is no proper template,  consider making an issue
about the missing template :). If you are a customer with a valid subscription,
then you might use our support portal to report a bug/problem.

## Changes

- **On 3 July 2023 we decided that we will no longer put the original "*.tar.gz", as
  they are available strictly from the container image.** They also clutter the
  repository. The :epository used to gain gain about 20 GiB each year and it was purged
  multiple times with the BFG repo cleaner.
- With that change, we provide a packages manifest for all images. It is a list
  of packages that are installed in the image. It is available in `installed_packages-$ARCH.txt`.
