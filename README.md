# DQ docker network inspection tool


## Installing / Getting started

You will require docker to build and start this image.
It has been built in a way it can be started and attached to another docker image.

### Prerequisites
This project is dependent on the following libs and programs:

    - docker

### Building

```shell
docker build -t dq-docker-netinspection .
```

### Deploying / Publishing

Obtain CONTAINER_ID of the image you want this network inspector to be attached to:
```bash
docker ps
```
Attach network inspector:
```bash
docker run -v $(pwd)/out:/out:rw --net container:<CONTAINER_ID_TO_LISTEN_ON> -ti dq-docker-netinspection
```


## Configuration

#### Listener
By default it is listening on `eth0` network interface (default one inside the container).

By default it is listening to `localhost` inside the container, by using attached container network

Default ports are 80, 443, 10443, 8080 and 8081 - these are very DQ specific
**TODO** - parametrize ports

#### Output file
By default this container saves output to `/out/file.pcap` file.
It should be on mounted volume so it can be inspected offline.



## Contributing

If you'd like to contribute, please fork the repository and use a feature
branch. Pull requests are warmly welcome.

More information in [`CONTRIBUTING.md`](./CONTRIBUTING.md)


## Links

- Project homepage: https://github.com/UKHomeOffice/dq-docker-netinspection
- Repository: https://github.com/UKHomeOffice/dq-docker-netinspection
- Issue tracker: https://github.com/UKHomeOffice/dq-docker-netinspection/issues

## Licensing
The code in this project is licensed under [`MIT LICENSE`](./LICENSE.md)

## Code of Conduct
Please follow this [`CODE OF CONDUCT`](./CODE_OF_CONDUCT.md)