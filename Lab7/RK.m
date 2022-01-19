clc; clear all; close all;
yt=dsolve('D1y=y*sin(x)','y(0)=5','x')
fplot(yt,[0 10]); hold on
% Phuong phap Heun
f=@(x,y) (y.*sin(x))
h=0.4; x=0:h:10; y=5;
for k=1:length(x)-1
    y1=f(x(k),y(k));
    y2=f(x(k)+h/2,y(k)+h/2*y1);
    y3=f(x(k)+h/2,y(k)+h/2*y2);
    y4=f(x(k)+h,y(k)+h*y3);
    y(k+1)=y(k)+(y1+2*y2+2*y3+y4)*h/6;
end
plot(x,y,'r');