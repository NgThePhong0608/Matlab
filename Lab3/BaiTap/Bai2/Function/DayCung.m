function [c,k] = DayCung(f,a,b,tol)
%     clc;clear all; close all;
%     syms x; y = (log10(x)/log10(exp(1)))^2 - x^2 + 2*x +3;
%     a = 1;b = 5;
%     fplot(char(y), [a b]);
%     f = inline(vectorize(y),'x');
%     tol = 1e-9;
    ts = a*f(b) - b*f(a);
    ms = f(b) - f(a);
    c = ts / ms;
    k = 1;
    while abs(f(c)) > tol
        if(f(a)*f(c) > 0)
            a = c;
        else
            b = c;
        end;
        ts = a*f(b) - b*f(a);
        ms = f(b) - f(a);
        c = ts / ms;
        k = k + 1;
    end;
   % fprintf('So vong lap k = %d \n',k);
end