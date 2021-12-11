clc;close all; clear all;
syms x; y = exp(-x) - sin(x).^2 - 0.5;
dy = diff(y,'x');dyy = diff(dy, 'x');
a = 0; b = 3;
fplot(char(dy), [a b]);
df = inline(vectorize(dy),'x');
dff = inline(vectorize(dyy),'x');
x0 = 0.5;
x1 = x0 - (df(x0) / dff(x0));
tol = 1e-9;
k = 1;
while abs(df(x1)) > tol
    x1 = x0 - (df(x0) / dff(x0));
    x0 = x1;
    k = k + 1;
end;
fprintf('Nghiem : %.10f\n', x1);
fprintf('So lan lap: %f\n', k);
