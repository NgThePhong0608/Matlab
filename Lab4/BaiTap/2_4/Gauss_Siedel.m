clc; close all; clear all;
A = [5 -2 3; -3 9 1; 2 -1 -7];
B = [-1; 2 ;3];
tol = 1e-9;
[x,y,k ] = Gauss_SiedelF( A,B,tol)



