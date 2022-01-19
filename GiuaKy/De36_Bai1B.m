clc; close all; clear all;
A = [1 2 3 4 13; 2 0 3 4 28; 4 2 3 1 20; -3 1 3 2 6];
[n,m] = size(A);
for k=1:min(m,n)
    for i=1:n
        if i ~= k
            p = A(i,k)/A(k,k);
            for j=1:m
                A(i,j) = A(i,j) - p*A(k,j);
            end
        end
    end
end
for i=1:n
    x(i,:) = A(i,n+1)/A(i,i);
end
A
x