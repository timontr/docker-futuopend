# docker-futuopend

Unofficial Docker image for FutuOpenD

## Parameter Configuration

Make a copy of `FutuOpenD-example.xml` and rename it to `FutuOpenD.xml`. Update the configuration parameters in the file.

Configuration item list: [https://openapi.futunn.com/futu-api-doc/opend/opend-cmd.html](https://openapi.futunn.com/futu-api-doc/opend/opend-cmd.html)

## Building Docker Image

```sh
docker build -t futuopend . --build-arg FUTUOPEND_VER=6.4.2908
```

## Run a FutuOpenD Instance

```sh
docker run --name futuopend -t -i -p 127.0.0.1:11111:11111 futuopend
```
