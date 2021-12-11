close all;clear all; 
N=20; % So lan lap
ak=1;fcos=0;
x=pi/4;
for k=1:N
 fcos=fcos+ak;
 ak=((-1)^k).*(x.^(2*k))./factorial(2*k);
end;
fcos,cos(x) % So sanh
