# BITREP
## Purpose
Bit-reproductible math functions across CPU/GPU platform with Fortran interface

Accept PR from pmarguinaud/bitrep repo.

- Add CMakeLists.txt for cmake build

## Usage

```bash
export FC=nvfortran CXX=nvc++
cmake -B build
cmake --build build
ls build/*.x
```

## Credit
- Original source: https://github.com/andyspiros/bitrep
- Then modified by Philippe Wautelet. Added a Fortran 2003 module file to interface Fortran and C
  Fork from https://github.com/pmarguinaud/bitrep
