clc;clear all; close all;
a = input('Nhap do dai canh a: ');
b = input('Nhap do dai canh b: ');
c = input('Nhap do dai canh c: ');
if (a + b >= c && b + c >= a && a + c >= b)
    p = (a + b + c)/2;
    S = sqrt(p*(p-a)*(p-b)*(p-c));
    fprintf('Dien tich = %.3f\n', S);
else
    disp('3 canh a,b,c khong tao thanh tam giac\n');
end;
