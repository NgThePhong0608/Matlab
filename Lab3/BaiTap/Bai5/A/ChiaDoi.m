clc; clear all; close all;
syms x; y = exp(-x) - 10*x - 7;
a = -1;b = 5;
fplot(char(y), [a b]);
f = inline(vectorize(y),'x');
tol = 1e-9;
c = (a + b)/2;
k = 1;
while abs(f(c))> tol
    if (f(a)*f(c)) > 0
        a = c;
    else 
        b = c;
    end;
    c = (a + b ) / 2;
    k = k + 1;
end;
fprintf('Nghiem x = %.10f \n',c);
fprintf('So vong lap k = %d \n',k);


