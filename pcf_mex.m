function [val] = pcf_mex(a,x,func)
    switch func
        case 'pu'
        %Compute parabolic cylinder function U(a,x), s.t. abs(a)<5 and abs(x)<5
            idx = 0;
        case 'dpu'
        %Compute derivative of parabolic cylinder function U(a,x), s.t. abs(a)<5 and abs(x)<5
            idx = 1;
        case 'pulx'
        %Compute parabolic cylinder function U(a,x) for large argument x (|x| >> |a| and |a| moderate)
            idx = 2;
        case 'dpulx'
        %Compute parabolic derivative of cylinder function U(a,x) for large argument x (|x| >> |a| and |a| moderate)
            idx = 3;
        case 'pd'
        %Compute parabolic cylinder function D(a,x) = U(-a-0.5,x), s.t. |a|<5 and |x|<5 (used in bortfeld function)
            % pu(-a - 0.5, x)
            idx = 4;
        case 'dpd'
        %Compute parabolic derivative of cylinder function D(a,x) = U(-a-0.5,x), s.t. |a|<5 and |x|<5 (used in bortfeld function)
            % dpu(-a - 0.5, x)
            idx = 5;
        case 'pv'
        %Compute parabolic cylinder function V(a,x), s.t. abs(a)<5 and abs(x)<5
            idx = 6;
        case 'dpv'
        %Compute derivative of parabolic cylinder function V(a,x), s.t. abs(a)<5 and abs(x)<5
            idx = 7;
        case 'pvlx'
        %Compute parabolic cylinder function V(a,x) for large argument x (|x| >> |a| and |a| moderate)
            idx = 8;
        case 'dpvlx'
        %Compute parabolic derivative of cylinder function V(a,x) for large argument x (|x| >> |a| and |a| moderate)
            idx = 9;
        case 'pw'
        %Compute parabolic cylinder function W(a,x), s.t. abs(a)<5 and abs(x)<5
            idx = 10;
        case 'dpw'
        %Compute derivative of parabolic cylinder function W(a,x), s.t. abs(a)<5 and abs(x)<5
            idx = 11;
        case 'pwlx'
        %Compute parabolic cylinder function W(a,x) for large argument x (|x| >> |a| and |a| moderate)
            idx = 12;
        case 'dpwlx'
        %Compute parabolic derivative of cylinder function W(a,x) for large argument x (|x| >> |a| and |a| moderate)
            idx = 13;
        otherwise
            error('Undefined function name');
    end
    val = pcf(a, x, idx);
end

