#!/bin/bash -xeu
. ../devenv/env.sh
DESTDIR=${DEVENV_PROJ}/memcached-instr CFLAGS="${CFLAGS_INSTR}" CC=${CC_MUSL_INSTR} ./build-x.sh $@
