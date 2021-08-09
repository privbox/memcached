#!/bin/bash -xe
. ../devenv/env.sh
DESTDIR=${DEVENV_PROJ}/memcached-fullinstr CFLAGS="${CFLAGS_FULLINSTR}" CC=${CC_MUSL_FULLINSTR} ./build-x.sh $@
