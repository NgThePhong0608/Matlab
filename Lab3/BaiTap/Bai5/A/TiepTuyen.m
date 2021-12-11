clc; clear all; close all;
syms x; y = exp(-x) - 10*x - 7;dy = diff(y, 'x');
a = -1;b = 5;
fplot(char(y), [a b]);
f = inline(vectorize(y),'x');
df = inline(vectorize(dy), 'x');
tol = 1e-9;
x0 = 2.5;
x1 = x0 - (f(x0)/ df(x0));
k = 1;
while abs(f(x1)) > tol
    x0 = x1;
    x1 = x0 - (f(x0)/ df(x0));
    k = k + 1;
end;
fprintf('Nghiem x = %.10f \n',x1);
fprintf('So vong lap k = %d \n',k);
