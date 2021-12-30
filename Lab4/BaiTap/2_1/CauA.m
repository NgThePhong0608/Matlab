clear all; clc;close all;
A=[2 -1 1;3 1 -1;1 -3 2];
A = fix(1 + 8 * rand(4,4))
n=size(A,1);
A = KhuGauss(A);
d = TinhDet(A);
r = CountRank(A);
[x] = HPT(A);
A,r,x;

