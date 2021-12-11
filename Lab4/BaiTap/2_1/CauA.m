clear all; clc;close all;
A=[2 -1 1;3 1 -1;1 -3 2];
A = fix(1 + 8 * rand(4,4))
n=size(A,1);
% Elimination
% for k=1:n-1
%     for i=k+1:n
%         p=A(i,k)/A(k,k);
%         for j=k:n
%             A(i,j)=A(i,j)-p*A(k,j);
%         end
%     end
% end
A = KhuGauss(A);
% d = TinhDet(A);
r = CountRank(A);
A,r

