% Nhap 2 so nguyen tim UCLN va BCNN
% BCNN(a,b) = (a.b)/UCLN(a,b);
clc;clear all;close all
n = input('Nhap so nguyen duong n: ');
m = input('Nhap so nguyen duong m: ');
ucln = 1;
for i = 1 : min(m,n) : 1
    if(mod(n,i) == 0 && mod(m,i) == 0)
        ucln = i;
    end;
end;
fprintf('UCLN(%.1f,%.1f) = %.1f\n', n,m,ucln);
fprintf('BCNN(%.1f,%.1f) = %.1f\n', n,m,(m*n)/ucln);