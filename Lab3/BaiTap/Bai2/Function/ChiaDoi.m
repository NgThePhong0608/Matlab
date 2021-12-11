function [c,k] = ChiaDoi(f,a,b,tol)
%     clc;clear all;close all;
%     syms x; y = (log10(x)/log10(exp(1)))^2 - x^2 + 2*x +3;
%     a = 1;b = 5;
%     fplot(char(y), [a b]);
%     f = inline(vectorize(y),'x');
%    tol = 1e-9;
    k = 1;
    c = (a + b) /2;
    while abs(f(c)) > tol
        if f(a)*f(c) > 0
            a = c;
        else
            b = c;
        end;
        k = k + 1;
        c = (a + b )/2;
    end;
    %fprintf('So vong lap k = %d \n',k);
end

