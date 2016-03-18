#!/bin/bash


cmd_fio="/cygdrive/c/Program\ Files/fio/fio"

cur_dir="/cygdrive/c/cygwin/home/usr0101039/devel/Benchmark"
conf_fio="$cur_dir/sequential.fio"


cur_dir="C:\\\\cygwin\\\\home\\\\usr0101039\\\\devel\\\\Benchmark"
##conf_fio="$cur_dir\\\\sequential.fio"
##conf_fio="$cur_dir\\\\bench-sequential.fio"
conf_fio="$cur_dir\\\\bench-sequential-4G.fio"



pushd f:/fio/

touch bench
## dd if=/dev/urandom of=
## head -c 128G /dev/urandom > bench
head -c 4G /dev/urandom > bench

eval $cmd_fio $conf_fio

popd


