clc; clear all; close all;
syms x y; z = sin(y).^2+sin(x)^2 - 1;
dz = diff(z,'x','y');
z1 = 4*x*y+0.1*x+0.2*y-1;
dz1 = diff(z1,'x','y');
a = 0;b = 2;
ezplot(z, [a b]);
ezplot(z1, [a b]);
f = inline(vectorize(z),'x','y');
df = inline(vectorize(dz),'x','y');
f1 = inline(vectorize(z1),'x','y');
df1 = inline(vectorize(dz1), 'x','y');
tol = 1e-9;
x0 =0.5;
y0 = 1.25;
x1 = x0 - (f(x0,y0)/ df(x0,y0));
y1 = x1 - (f(x1,y0)/ df(x1,y0));
k = 1;
while abs(f(x0,y0)) > tol & abs(f(x1,y1)) > tol
    x0 = x1;
    x1 = x0 - (f(x0,y0)/ df(x0,y0));
    y0 = y1;
    y1 = x1 - (f(x1,y1)/ df(x1,y1));
    k = k + 1;
end
fprintf('Nghiem x = %.10f , y = %.10f\n',x1,y1);
fprintf('So vong lap k = %d \n',k);
