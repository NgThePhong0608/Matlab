clc;close all; clear all;
h = ezplot('sin(x*y)-x-3*y+1=0', [-2 2]);
set(h,'color', 'b'); hold on;
ezplot('exp(x-y) + 2*y^2 - x - 1 = 0',[-2 2]); hold off;
f = inline('[(sin(x(1)*x(2))-x(1)-3.*x(2)+1); (exp(x(1)-x(2))+2*x(2).^2-x(1)-1)]','x');
[x0,y0] = ginput;
for k =1:length(x0)
    [xy(k,:),fxy(k,:)]=fsolve(f,[x0(k),y0(k)],optimset('Display','off'));
end
disp('Nghiem: '), xyf1f2=[xy,fxy]