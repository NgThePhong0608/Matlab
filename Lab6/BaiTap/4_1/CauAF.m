function [S] = CauAF(x,y)
syms x;
f = inline(vectorize(y),'x');
a = 0;b = 10;
N = 5000;
x = a; S = 0;
dx = (b - a)/N;
for k=1:N
    S = S + dx*(f(x) + f(x+dx))/2;
    x = x + dx;
end
end

