clc;clear all;close all;
% Tao ma tran
A1=[1 2 3;4 5 6], A2=ones(2,3)
B1=zeros(3,2), B2=rand(3,2)
C1=eye(3), C2=fix(1+8*rand(3))
% Phep toan
D1=A1+A2
D2=C2-C1
E1=A1*B1, E2=C1*C2
C1\E2 %=C2
E2/C2 %=C1