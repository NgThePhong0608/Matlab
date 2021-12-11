clear all; close all;clc
x=0:0.2:1;
y=[2.30 2.87 3.07 4.82 6.35 10.3];
figure(1);plot(x,y,'+:')
% Tim gan dung---------------
X=x;Y=log(y);
pp=polyfit(X,Y,2);
b0=pp(1);c0=pp(2);a0=exp(pp(3));
% Chinh xac--------------------
f=inline('A(1)*exp(A(2)*(x.^2)+A(3)*x)','A','x');
A0=[a0 b0 c0];
[An dAn]=lsqcurvefit(f,A0,x,y)
xx=linspace(0,1,100);yy=f(An,xx);
figure(2);
plot(xx,yy);hold on;
plot(x,y,'r*');hold off;