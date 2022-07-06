% help function of pcf.mexw64 
% author : shuang zhou civerjia@gmail.com
% C++ version of E. Cojocaru (2022). Parabolic Cylinder Functions 
% (https://www.mathworks.com/matlabcentral/fileexchange/22620-parabolic-cylinder-functions),
% MATLAB Central File Exchange. Retrieved June 25, 2022
% how to use: val = pcf(a, x_i, idx); val = pcf(0.1,0:0.1:1,0);
% a : double scalar
% x : input x, double scalar or 1d - array (n,1) or (1,n)
% idx : select function
%     case 0:pu;
%     case 1:dpu;
%     case 2:pulx;
%     case 3:dpulx;
%     case 4:pd;  % pu(-a - 0.5, x)   D
%     case 5:dpd; % dpu(-a - 0.5, x)  dD_dx
%     case 6:pv;
%     case 7:dpv;
%     case 8:pvlx;
%     case 9:dpvlx;
%     case 10:pw;
%     case 11:dpw;
%     case 12:pwlx;
%     case 13:dpwlx;
% val : return value size = (n,1)
