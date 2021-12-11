clc;clear all;close all;
syms x; y=x-sin(x)-1; a=0; b=3;
fplot(char(y),[a b]);
f=@(x)x - sin(x) - 1;
tol=1e-9;
c=(a+b)/2; k=1;
while abs(f(c))>tol
    if f(a)*f(c)>0
        a=c;
    else
        b=c;
    end
    c=(a+b)/2;
    k=k+1;
end
fprintf('Nghiem x = %.10f \n',c);
fprintf('So vong lap k = %d \n',k);