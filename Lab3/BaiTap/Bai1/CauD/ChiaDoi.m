clc;clear all; close all;syms x;
syms x; y = exp(-x) - sin(x);
a = 0; b = 1;
c = 8; d = 10;
fplot(char(y), [a d]);
f = inline(vectorize(y),'x');
tol = 1e-9;
e = (a+b)/2;
r = (c + d)/2;
k = 1;
while abs(f(e)) > tol & abs(f(r)) > tol
    if f(a)*f(e) > 0 & f(c)*f(r) > tol
        a = e;
        c = r;
    else
        b = e;
        d = r;
    end;
    e = (a+b)/2;
    r = (c + d)/2;
    k = k + 1;
end;
fprintf('Nghiem x1 = %.10f \n',e);
fprintf('Nghiem x2 = %.10f \n',r);
fprintf('So vong lap k = %d \n',k);