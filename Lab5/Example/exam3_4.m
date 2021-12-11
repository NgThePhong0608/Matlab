clc;clear all;close all;
X=[2 4 6 8 10 12 14];
Y=[3.1 4.4 7.2 9.8 6.8 4.5 3.9];
sp=spline(X,Y);
sp.breaks
sp.coefs
xx=linspace(1,15,200);
yy=fnval(sp,xx);
figure(1);
%fnplt(sp,[1,15])
plot(xx,yy);hold on
plot(X,Y,'sr');hold off;