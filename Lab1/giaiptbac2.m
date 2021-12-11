clc; clear all;
%function[x1,x2] = GiaiPTB2(a,b,c) 
disp('Giai phuong trinh bac 2');
a = 1; b = -5; c = 3;
d = sqrt(b^2 - 4 * a * c);
format long
x1 = (-b + d) / (2 * a)
x2 = (-b - d) / (2 * a)


