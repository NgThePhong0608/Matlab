% Ma tran 2
clc;clear all;close all;
% Tao ma tran 3x3 ngau nhien
A=fix(1+8*rand(3))
% Tinh toan
Ainv=inv(A) % Ma tran ngich dao
At=A.' % Ma tran chuyen vi
Adiag=diag(A) % Lay duong cheo chinh
Alr=fliplr(A) % Ma tran phan xa trai-phai
Aud=flipud(A) % Ma tran phan xa tren-duoi
Arot=rot90(A,1)% Quay Ma tran 90 do
detA=det(A) % Tinh dinh thuc
rankA=rank(A) % Tinh hang