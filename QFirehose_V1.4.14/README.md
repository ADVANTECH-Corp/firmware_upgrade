1:download musl toolchain,link:http://musl.cc/aarch64-linux-musl-cross.tgz
decompress it to your wanted path,for example:
tar xzf aarch64-linux-musl-cross.tgz -C /opt/
2:build QFirehose
CROSS_COMPILE=/opt/aarch64-linux-musl-cross/bin/aarch64-linux-musl- make

