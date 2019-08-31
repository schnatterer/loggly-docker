loggly-docker
=============
[![](https://images.microbadger.com/badges/image/schnatterer/loggly-docker.svg)](https://hub.docker.com/r/schnatterer/loggly-docker)

Docker container for loggly (via rsyslog). Check out Loggly's [Docker logging documentation](https://www.loggly.com/docs/docker-syslog/) to learn more.

This fork:

* merges sendgridlabs/loggly-docker and ebr/loggly-docker
* Fixes `LOGGLY_DEBUG`
* Upgrades to newer underlying alpine base image

Usage:

```
docker run -e LOGGLY_AUTH_TOKEN=[Loggly Customer Token] -e LOGGLY_TAG=[Tag Describing Source] [ -e LOGGLY_DEBUG=true ] sendgridlabs/loggly-docker
```
