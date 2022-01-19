clc;close all; clear all;
A = [1 2 3 4 13; 2 0 3 4 28; 4 2 3 1 20; -3 1 3 2 6];
m = size(A,1);n=size(A,2);
for k=1:min(m-1,n)
    for i=k+1:m
        p = A(i,k)/A(k,k);
        for j=k:n
            A(i,j)=A(i,j)-p*A(k,j);
        end
    end
end
d=1;
for i=1:m
    d = d*A(i,i);
end
d