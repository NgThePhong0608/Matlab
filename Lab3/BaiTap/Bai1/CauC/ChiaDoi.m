% Chia doi
clc;close all; clear all;
syms x; y = exp(-x) - sin(x);
a = 0; b= 1;
fplot(char(y), [a b]);
f = inline(vectorize(y), 'x');
a = 0;b = 1; c= (a + b) /2;
tol =1e-9;
k = 1;
while abs(f(c)) > tol
    if f(a)*f(c) > 0
        a = c;
    else 
        b = c;
    end;
    c = (a + b) ./ 2;
    k = k + 1;
end;
fprintf('Nghiem x = %.10f\n' , c);
fprintf('So lan lap: %f\n', k);