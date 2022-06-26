#include <cmath>
#include "mex.h"
#include "parabolic_cylinder_function.h"
#include <vector>



void mexFunction(int nlhs, mxArray* plhs[], int nrhs, const mxArray* prhs[]) {
    double* val_o{}, * x_i{};
    int size{1};
    int idx{1};
    double a = double(*mxGetPr(prhs[0]));
    x_i = mxGetPr(prhs[1]);
    if (int(mxGetN(prhs[1])) <= int(mxGetM(prhs[1])))
    {
        size = int(mxGetM(prhs[1]));
    }
    else
    {
        size = int(mxGetN(prhs[1]));
    }
    idx = int(*mxGetPr(prhs[2]));
    
    plhs[0] = mxCreateDoubleMatrix(mwSize(size), 1, mxREAL);
    val_o = mxGetPr(plhs[0]);
    PCF::call_pcf_name_array(a, x_i, idx, size, val_o);

}

