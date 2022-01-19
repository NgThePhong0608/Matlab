clc; clear all; close all;
yt=dsolve('D1y=y*sin(x)','y(0)=5','x')
fplot(yt,[0 10]); hold on
% Phuong phap Midpoint
f=@(x,y) (y.*sin(x))
h=0.4; x=0:h:10; y=5;
for k=1:length(x)-1
    p=y(k)+f(x(k),y(k))*h/2; % Predictor
    y(k+1)=y(k)+h*f(x(k)+h/2,p); % Corrector
end
plot(x,y,'g');