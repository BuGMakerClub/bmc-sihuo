## install C
```shell
yum install gcc
```

## install C++
```shell
yum install gcc-c++ libstdc++-devel
```

## OpenSSL
```
wget http://www.openssl.org/source/openssl-1.0.2j.tar.gz

tar -xzf openssl-1.0.2j.tar.gz

cd openssl-1.0.2j

./config --prefix=/usr/local/openssl

./config -t

make

make install

ldd /usr/local/openssl/bin/openssl

which openssl

openssl version
```
