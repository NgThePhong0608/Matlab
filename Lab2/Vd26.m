clc;close all; clear all; 
tol=1e-12; % Sai so
k=1;ak=1;fcos=0;
x=pi/4;
while abs(ak)>tol
 fcos=fcos+ak;
 ak=((-1)^k).*(x.^(2*k))./factorial(2*k);
 k=k+1;
end;
fcos,cos(x),k;