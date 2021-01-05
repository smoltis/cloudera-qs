#### Prerequisites
Make sure your Docker Desktop is configured with at least 8GB of RAM. This is a reqirement for Cloudera Express.
All the default service ports are exposed to the localhost.

Run to start:
```bash
. start.sh
```

It will take a few minutes for the container to start. One can keep an eye on the logs, like so:
```bash
docker-compose logs -f cloudera
```

> `http://localhost:7180`
> Username: cloudera
> Password: cloudera

> `https://localhost:8889` for quickstart tutorial

#### References:
* (Cloudera Quickstart Docker on Mac)[https://blog.clairvoyantsoft.com/cloduera-quickstart-vm-using-docker-on-mac-2308acd196f2]
* (Cloudera Quickstart Docker Container)[https://docs.cloudera.com/documentation/enterprise/5-6-x/topics/quickstart_docker_container.html]

#### Known issues:

If you observe a 'Clock Offset' issue:
```bash
docker exec -it cloudera bash
```
then run
```bash
service ntpd start
```