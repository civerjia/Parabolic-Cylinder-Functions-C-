function [val] = pcf_mex(a,x,func)
    switch func
        case 'pu'
            idx = 0;
        case 'dpu'
            idx = 1;
        case 'pulx'
            idx = 2;
        case 'dpulx'
            idx = 3;
        case 'D'
            % pu(-a - 0.5, x)
            idx = 4;
        case 'dD_dx'
            % dpu(-a - 0.5, x)
            idx = 5;
        case 'pv'
            idx = 6;
        case 'dpv'
            idx = 7;
        case 'pvlx'
            idx = 8;
        case 'dpvlx'
            idx = 9;
        case 'pw'
            idx = 10;
        case 'dpw'
            idx = 11;
        case 'pwlx'
            idx = 12;
        case 'dpwlx'
            idx = 13;
        otherwise
            error('Undefined function name');
    end
    val = pcf(a, x, idx);
end

