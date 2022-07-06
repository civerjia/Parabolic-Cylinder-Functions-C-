# Parabolic Cylinder Functions C++ Version

This project is a faster version of MATLAB code original from E. Cojocaru. Parabolic Cylinder Functions (https://www.mathworks.com/matlabcentral/fileexchange/22620-parabolic-cylinder-functions)

## Features: 
- The API is similar to original functions, such as `val = pwlx(a,x);` -> `val = pcf_mex(a,x,'pwlx');`
- The MATLAB toolbox only support scalar inputs, pcf_mex now support 1D array of size (1,n) or (n,1), return value will have size(n,1). 
- Intel compiler, OPENMP， AVX2 or AVX512 are utilized to speed up the calculation.

## What's inside the box
- `pcf_mex(a,x,'pu)` Compute parabolic cylinder function U(a,x), s.t. abs(a)<5 and abs(x)<5
- 

I tested it with simple benchmark : pcf_mex(-1,linspace(4,5,1e6),'pwlx'), unit is seconds

% 0.3994 intel compiler 2021 + openmp + avx2

% 1.0733 vs + openmp + avx2

% 1.0858 vs + openmp

% 9.7933 vs

% 4.476539 original + parfor

% 32.521651 original

The first one is compiled with Visual Studio + Intel OneAPI, intel compiler 2021 is much more faster.
