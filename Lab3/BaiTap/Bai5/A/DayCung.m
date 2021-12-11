clc;clear all; close all;
syms x; y = exp(-x) - 10*x - 7;
a = 2;b = 5;
fplot(char(y), [a b]);
f = inline(vectorize(y),'x');
tol = 1e-9;
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
fprintf('Nghiem x = %.10f \n',c);
fprintf('So vong lap k = %d \n',k);