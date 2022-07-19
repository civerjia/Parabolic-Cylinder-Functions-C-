# Parabolic Cylinder Functions C++ Version
[![View Parabolic Cylinder Functions C++ faster version on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/114125-parabolic-cylinder-functions-c-faster-version)

This project is a faster version of MATLAB code original from E. Cojocaru. Parabolic Cylinder Functions (https://www.mathworks.com/matlabcentral/fileexchange/22620-parabolic-cylinder-functions)

## Features: 
- The API is similar to original functions, such as `val = pwlx(a,x);` -> `val = pcf_mex(a,x,'pwlx');`
- The MATLAB toolbox only support scalar inputs, pcf_mex now support 1D array of size (1,n) or (n,1), return value will have size(n,1). 
- Intel compiler, OPENMP， AVX2 or AVX512 are utilized to speed up the calculation.
- Add two useful functions for bortfeld function
- *Apple Silicon supported*

## What's inside the box
- `pcf_mex(a,x,'pu')` Compute parabolic cylinder function U(a,x), s.t. abs(a)<5 and abs(x)<5
- `pcf_mex(a,x,'dpu')` Compute derivative of parabolic cylinder function U(a,x), s.t. abs(a)<5 and abs(x)<5
- `pcf_mex(a,x,'pulx')` Compute parabolic cylinder function U(a,x) for large argument x (|x| >> |a| and |a| moderate)
- `pcf_mex(a,x,'dpulx')` Compute parabolic derivative of cylinder function U(a,x) for large argument x (|x| >> |a| and |a| moderate)
- `pcf_mex(a,x,'pd')` Compute parabolic cylinder function D(a,x) = U(-a-0.5,x), s.t. |a|<5 and |x|<5 (used in bortfeld function)
- `pcf_mex(a,x,'dpd')` Compute parabolic derivative of cylinder function D(a,x) = U(-a-0.5,x), s.t. |a|<5 and |x|<5 (used in bortfeld function)
- `pcf_mex(a,x,'pv')` Compute parabolic cylinder function V(a,x), s.t. abs(a)<5 and abs(x)<5
- `pcf_mex(a,x,'dpv')` Compute derivative of parabolic cylinder function V(a,x), s.t. abs(a)<5 and abs(x)<5
- `pcf_mex(a,x,'pvlx')` Compute parabolic cylinder function V(a,x) for large argument x (|x| >> |a| and |a| moderate)
- `pcf_mex(a,x,'dpvlx')` Compute parabolic derivative of cylinder function V(a,x) for large argument x (|x| >> |a| and |a| moderate)
- `pcf_mex(a,x,'pw')` Compute parabolic cylinder function W(a,x), s.t. abs(a)<5 and abs(x)<5
- `pcf_mex(a,x,'dpw')` Compute derivative of parabolic cylinder function W(a,x), s.t. abs(a)<5 and abs(x)<5
- `pcf_mex(a,x,'pwlx')` Compute parabolic cylinder function W(a,x) for large argument x (|x| >> |a| and |a| moderate)
- `pcf_mex(a,x,'dpwlx')` Compute parabolic derivative of cylinder function W(a,x) for large argument x (|x| >> |a| and |a| moderate)

## Speed benchmark
I tested it with simple benchmark : pcf_mex(-1,linspace(4,5,1e6),'pwlx'), unit is seconds

% 1.8453 Apple M1 pro + openmp (Matlab2022a Rosseta2)

% 0.3994 intel compiler 2021 + openmp + avx2

% 1.0733 vs + openmp + avx2

% 1.0858 vs + openmp

% 9.7933 vs

% 4.476539 original + parfor

% 32.521651 original

The first one is compiled with Visual Studio + Intel OneAPI, intel compiler 2021 is much more faster.
