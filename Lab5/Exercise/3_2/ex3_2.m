clc;clear all;close all;
X=[-1.5 0.5 1.5 3.5];
Y=[-7.875 5.625 1.875 3.375];
% Noi suy: Da thuc bac >=3
pp=polyfit(X,Y,3)
xx=linspace(-2,4,200);
yy=polyval(pp,xx);
figure(1);
plot(xx,yy);hold on
plot(X,Y,'sr');hold off;
% Xap xi: Da thuc bac <3
pp=polyfit(X,Y,2)
xx=linspace(-2,4,200);
yy=polyval(pp,xx);
figure(2);
plot(xx,yy);hold on;
plot(X,Y,'sr');hold off;