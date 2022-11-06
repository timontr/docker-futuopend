# docker-futuopend

Unofficial Docker image for FutuOpenD

## Building Docker Image

```console
$ docker build -t futuopend . --build-arg FUTUOPEND_VER=6.4.2908
```

## Generate RSA Private Key

```console
$ mkdir resource
$ openssl genrsa -out .\resource\id_rsa_futuopend 1024
```

## Parameter Configuration

Make a copy of `FutuOpenD-example.xml` and rename it to `FutuOpenD.xml`. Update the configuration parameters in the file.

```console
$ copy FutuOpenD-example.xml .\resource\FutuOpenD.xml
```

Configuration item list: [https://openapi.futunn.com/futu-api-doc/opend/opend-cmd.html](https://openapi.futunn.com/futu-api-doc/opend/opend-cmd.html)

## Run a FutuOpenD Instance

```console
$ docker compose up -d
...
API启用RSA: 是
...
正在请求手机验证码
请求手机验证码成功
命令提示: input_phone_verify_code -code=123456
$ docker attach futuopend
>>>input_phone_verify_code -code=123456
正在验证手机验证码
...
登录成功
```
