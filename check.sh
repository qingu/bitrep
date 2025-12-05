#!/bin/bash

for x in SIN_ COS_ ASIN ATAN EXP_ LOG_ ERF_ ERFC_ GAMMA_ LOGGAMMA_
do
  echo "==> $x <=="
  diff -q Z$x.b.gpu.dat Z$x.b.cpu.dat
  diff -q Z$x.b.gpu.dat Z$x.B.gpu.dat
done
