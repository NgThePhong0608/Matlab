clc; close all; clear all;
yt=dsolve('D1y=y*sin(x)','y(0)=5','x')
fplot(yt,[0 10]); hold on
% phuong phap Euler
f=@(x,y) (y.*sin(x))
h=0.4; x=0:h:10; y=5;
for k=1:length(x)-1
    y(k+1)=y(k)+h*f(x(k),y(k));
end
plot(x,y,'r');

% heun
for k=1:length(x)-1
    p=y(k)+f(x(k),y(k))*h; % Predictor
    y(k+1)=y(k)+h*(f(x(k),y(k))+f(x(k+1),p))/2; % Corrector
end
plot(x,y,'g');

%midpoint
for k=1:length(x)-1
    p=y(k)+f(x(k),y(k))*h/2; % Predictor
    y(k+1)=y(k)+h*f(x(k)+h/2,p); % Corrector
end
plot(x,y,'b');

%rk4
for k=1:length(x)-1
    y1=f(x(k),y(k));
    y2=f(x(k)+h/2,y(k)+h/2*y1);
    y3=f(x(k)+h/2,y(k)+h/2*y2);
    y4=f(x(k)+h,y(k)+h*y3);
    y(k+1)=y(k)+(y1+2*y2+2*y3+y4)*h/6;
end
plot(x,y,'m');
