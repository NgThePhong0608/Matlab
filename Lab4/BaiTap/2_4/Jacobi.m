clc;clear;close all; 
A=[5 -2 3;-3 9 1;2 -1 -7]; 
b=[-1;2;3]; 
tol = 1e-9;
[k, X0] = JacobiF(A,b, tol)
