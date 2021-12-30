clc;close all; clear all;
A = fix(1 + 8 * rand(4,3));
[m,n] = size(A);
A
for k=1:min(m-1,n)
    for i=k+1:m
        p = A(i,k)/A(k,k);
        for j=k:n
            A(i,j) = A(i,j) - p*A(k,j);
        end
    end
end
A
r = CountRank(A)