a = -1;
x = linspace(4,5,1e6);
% val1 = pwlx(a,x);
t = zeros(5,1);
for i = 1:5
tic;
val2 = pcf_mex(a,x,'pwlx');
t(i) = toc;
end
mean(t)
% 0.3994 intel compiler 2021 + openmp + avx2
% 1.0733 vs + openmp + avx2
% 1.0858 vs + openmp
% 9.7933 vs
%%
tic;
val1 = zeros(1e6,1);
parfor i = 1:1e6
    val1(i) = pwlx(a,x(i));
end
toc;
mse(val1 - val2)
