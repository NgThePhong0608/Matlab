clc;clear all; close all;
syms x y;
f1 = sin(x*y)-x-3*y+1;
f2=exp(x-y)+2*y.^2-x-1;
df1 = diff(f1,'x','y');
df2 = diff(f2,'x','y');
a = -3;b=3;
ezplot(f1,[a b]);hold on;
ezplot(f2, [a b]);hold off;
f1 = inline(vectorize(f1),'x','y');
df1 = inline(vectorize(df1),'x','y');
f2 = inline(vectorize(f2),'x','y');
df2 = inline(vectorize(df2),'x','y');
tol = 1e-9;
[x0,y0] = ginput;
x1 = x0 - (f1(x0,y0)/ df1(x0,y0));
y1 = x1 - (f2(x1,y0)/ df2(x1,y0));
k = 1;
while abs(f1(x1,y1)) > tol
    x1 = x0 - (f1(x0,y0)/ df1(x0,y0));
    y1 = y0;
    y1 = x1 - (f2(x1,y1)/ df2(x1,y1));
    x0=x1;
    k = k + 1;
end
fprintf('Nghiem x = %.10f , y = %.10f\n',x1,y1);