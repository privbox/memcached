#!/bin/bash -xeu
NPROC=${NPROC:-$(nproc)}
export CFLAGS="${CFLAGS} -fno-builtin -O2"
export LDFLAGS="${LDFLAGS:-""} -static"

make distclean || true
./configure --disable-docs --disable-coverage --disable-silent-rules --enable-static
make -j${NPROC}
mkdir -p  $DESTDIR
cp memcached $DESTDIR/memcached
