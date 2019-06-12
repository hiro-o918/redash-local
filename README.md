# re:dash-local
## Overview
This repository setups a re:dash environment on your machine easily.

The environment is not aimed to be publicized, thus, all the important variables (e.g. a password and secret keys) are **not CONCEALED**.

## Requirements
[Docker](https://docs.docker.com/v17.12/install/) and [docker-compose](https://docs.docker.com/compose/install/) are required.
First, please install them.

## Setup
### Clone repository
```bash
$ git clone https://github.com/hiro-o918/redash-local
$ cd redash-local
```

### Initialize database
```bash
$ make initialize
````
**NOTE:**
Be carefull when do this operation more than once because it removes a re:dash container.

## How to use
### Start servers
```bash
$ make start
```

### Stop servers
```bash
$ make stop
```

## Acknowledgement
The `docker-compose.yml` is almost copied from [here](https://github.com/getredash/redash/blob/master/setup/docker-compose.yml).

If you want to know about re:dash more check [this](https://redash.io/).
