% Tiep tuyen
clc;clear all; close all;
syms x; y = exp(-x) - sin(x);dy = diff(y,'x');
a = 0; b = 1;
c = 5; d = 10;
fplot(char(y), [a d]);
f = inline(vectorize(y),'x');
df = inline(vectorize(dy),'x');
tol = 1e-9;
x0 = 0.5;
x1 = x0 - (f(x0)/df(x0));
x2 = 5.5;
x3 = x2 - (f(x2)/df(x2));
k = 1;
while abs(f(x1)) > tol & abs(f(x2)) > tol
    x1 = x0 - (f(x0)/df(x0));
    x0 = x1;
    x3 = x2 - (f(x2)/df(x2));
    x2 = x3;
    k = k + 1;
end
fprintf('Nghiem x1 = %.10f \n',x1);
fprintf('Nghiem x2 = %.10f \n',x3);
fprintf('So vong lap k = %d \n',k);


