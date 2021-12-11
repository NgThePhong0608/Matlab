% function file
function [x1,x2] = PTB2(a,b,c)
%a=1;b=-3;c=2;
d = b^2-4*a*c;
x1 = (-b-sqrt(d))/(2*a)
x2 = (-b+sqrt(d))/(2*a)