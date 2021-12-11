clc; clear all;close all; 
h=ezplot('sin(x)^2+sin(y)^2-1=0',[0 2]); 
set(h,'color','r'); hold on; 
ezplot('4*x*y+0.1*x+0.2*y-1=0',[0 2]);hold off; 
f=inline('[sin(1)^2+sin(2)^2-1;4*x(1)*x(2)+0.1*x(1)+0.2*x(2)-1]','x'); 
[x0,y0]=ginput; 
for k=1:length(x0) 
[xy(k,:),fxy(k,:)]=fsolve(f,[x0(k),y0(k)],optimset('Display','off')); 
end 
disp('Nghiem'), xyf1f2=[xy,fxy]