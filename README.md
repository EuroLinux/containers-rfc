# containers-rfc
This repository contains EuroLinux made Docker images and Requests for Change.
RFC should be made with an issue. It allows an open process that any developer with a GitHub account can participate.

## Currently Supported Base Images:
- EuroLinux 7
- EuroLinux 8
- CentOS 7
- CentOS 8
- Oracle Linux 7
- Oracle Linux 8
- Scientific Linux 7

## Legacy Base Images:
- EuroLinux 6

## Issues
Please use templates. In case that there is no proper template,  consider making an issue about missing template :).
If you are a customer with a valid subscription, then you might use our support portal to report a bug/problem.

## How to clone?

When the repository gets too big to maintain in a stable way, we use **BFG repo
cleaner**. To add something manually (this repository is used mostly by our
CI/CD solutions), You might clone it in the following manner:

```bash
git clone --depth 1 https://github.com/EuroLinux/containers-rfc.git 
# OR
git clone --depth 1 git@github.com:EuroLinux/containers-rfc.git 
```

It should get only the newest file (less than 1 GiB) instead of the full history.

