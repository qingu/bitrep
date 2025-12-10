#!/bin/bash

dir1=$1
dir2=$2
for x in SIN_ COS_ ASIN ATAN EXP_ LOG_ ERF_ ERFC_ GAMMA_ LOGGAMMA_
do
  echo "==> $x intrinsic text<=="
  diff -q $dir1/Z$x.i.cpu.dat $dir2/Z$x.i.cpu.dat
  echo "==> $x BR custom text<=="
  diff -q $dir1/Z$x.b.cpu.dat $dir2/Z$x.b.cpu.dat
done

echo "======================================================"

for x in SIN_ COS_ ASIN ATAN EXP_ LOG_ ERF_ ERFC_ GAMMA_ LOGGAMMA_
do
  echo "==> $x intrinsic bin<=="
  diff -q $dir1/Z$x.i.cpu.bin $dir2/Z$x.i.cpu.bin
  echo "==> $x BR custom bin<=="
  diff -q $dir1/Z$x.b.cpu.bin $dir2/Z$x.b.cpu.bin
done
