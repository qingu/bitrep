#!/bin/bash

dir1=$1
dir2=$2
for x in SIN_ COS_ ASIN ATAN EXP_ LOG_ ERF_ ERFC_ GAMMA_ LOGGAMMA_
do
  echo "==> $x intrinsic<=="
  diff -q $dir1/Z$x.i.cpu.dat $dir2/Z$x.i.cpu.dat
  echo "==> $x BR custom<=="
  diff -q $dir1/Z$x.b.cpu.dat $dir2/Z$x.b.cpu.dat
done
