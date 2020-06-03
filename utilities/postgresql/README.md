# EuroLinux PostgreSQL container image

A Dockerfile that produces a Docker Image for [PostgreSQL](http://www.postgresql.org/) based on EuroLinux 7.7  [ https://en.euro-linux.com/]( https://en.euro-linux.com/ " https://en.euro-linux.com/")


## PostgreSQL version

The `master` branch currently hosts PostgreSQL 12

## Why use a EuroLinux  based image?

Our images are automatically rebuilt (once a month). Constantly rebuilt images are:

- More secure.

- Have predictable updates.

- The change process is more stable.

- The infrastructure/scripts/workflows for ad-hoc fixes (ex. critical security) are in place.

For more information please visit[ https://en.euro-linux.com/]( https://en.euro-linux.com/ " https://en.euro-linux.com/")

## Usage

```
$ docker pull eurolinux/postgresql

```

### Run the image

To run the image and bind to host port 5432:

```
$ docker run -d --name eurolinux7postgres -p 5432:5432 eurolinux/postgresql

The default password is: zaqWSX12

```


### Or

You can be used to define another location and database option, for  example: 


```

mkdir /var/lib/pgsql_data  # proposed location for the database

# volume for data storage
docker volume create --driver local --name psql_data --opt type=none --opt device=/var/lib/pgsql_data --opt o=uid=root,gid=root --opt o=bind

# run container
docker run -d -p 5432:5432 -v psql_data:/var/lib/pgsql/12/data -e POSTGRES_DBNAME=mydatabase -e POSTGRES_USERNAME=myusername -e POSTGRES_PASSWORD=mysecretpassword eurolinux/postgresql


```

