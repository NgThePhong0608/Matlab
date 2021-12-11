% Pp cat tuyen
clc;clear all; close all;
syms x;y = y = exp(-x) - sin(x)s;
a = 0; b = 1;
fplot(char(y), [a b]);
f = inline(vectorize(y),'x');
tol=1e-9;
x0 = 0;
x1 = 0.95;
m = x1 - x0;
n = f(x1) - f(x0);
x2 = x0 - f(x0)*(m/n);
k=1;
while abs(f(x2)>tol)
    x0=x1;
    x1 = x2;
    m = x1 - x0;
    n = f(x1) - f(x0);
    x2=x0-f(x0).*(m/n);
    k=k+1;
end;
fprintf('Nghiem x = %.10f \n',x2);
fprintf('So vong lap k = %d \n',k);
