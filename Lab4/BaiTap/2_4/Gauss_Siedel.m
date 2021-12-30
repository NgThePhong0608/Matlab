clc; close all; clear all;
% A = [5 -2 3; -3 9 1; 2 -1 -7];
% B = [-1; 2 ;3];
A = [2 -2 1; 3 1 -1;1 -3 2];
B = [3; 7; 0];
tol = 1e-9;
[x,y,k ] = Gauss_SiedelF( A,B,tol)



