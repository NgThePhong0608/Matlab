clc;clear all;close all;
syms x;f=x^4-20*x^2+20;
ezplot(f,[-5 5]);shg
%Tim khong diem
x0=solve(f,'x');x0=double(x0);f0=subs(f,x,x0);
disp('Khong diem:');xy0=[x0,f0]
% Tim cuc tri
df=diff(f);d2f=diff(f,2);
xct=solve(df,'x');xct=double(xct);
fct=subs(f,x,xct);f2ct=subs(d2f,x,xct);
xct,fct,f2ct