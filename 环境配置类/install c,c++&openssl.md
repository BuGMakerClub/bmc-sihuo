## install C & C++
[参考：Centos下安装c,c++以及java环境](http://www.cnblogs.com/hehang/p/6291882.html)
```shell
yum install gcc
yum install gcc-c++ libstdc++-devel
```

## OpenSSL
[参考：Linux(centos7)下安装OpenSSL 安装图文详解](http://blog.csdn.net/ikownyou/article/details/53021686)
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
