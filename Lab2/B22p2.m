% Kiem tra SNT
clc;clear all; close all;
n = input('Nhap so nguyen duong n: ');
flag = 1;
for i=2:sqrt(n)
    if mod(n,i) == 0
        flag = 0;
        break;
    end;
end;

if flag == 1
    fprintf('%d la so nguyen to\n', n);
else 
    fprintf('%d khong la so nguyen to\n',n);
end;


