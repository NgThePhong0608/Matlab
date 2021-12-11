clc;clear all;close all;
disp('---Chuong trinh giai phuong trinh bac 2---');
a = input('Nhap a = ');
b = input('Nhap b = ');
c = input('Nhap c = ');

d = sqrt((b*b)-4*a*c);
fprintf('Nghiem x1 = %.2f\n', (-b-d)/(2*a));
fprintf('Nghiem x2 = %.2f\n', (-b+d)/(2*a));