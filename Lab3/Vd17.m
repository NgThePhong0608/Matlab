%clc; clear all;close all;
h=ezplot('x^3+y^3-3*x*y=0',[-2 2]);
set(h,'color','r'); hold on;
ezplot('x^2+y^2-1=0',[-2 2]);hold off;
f=inline('[(x(1).^3+x(2).^3-3*x(1).*x(2));(x(1).^2+x(2).^2-1)]','x');
[x0,y0]=ginput;
for k=1:length(x0)
[xy(k,:),fxy(k,:)]=fsolve(f,[x0(k),y0(k)],optimset('Display','off'));
end
disp('Nghiem'), xyf1f2=[xy,fxy]