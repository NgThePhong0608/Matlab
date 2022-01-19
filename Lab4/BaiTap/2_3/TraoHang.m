clc; close all; clear all;
A = [2 -4 4 -2; 4 -8 7 2 ; -1 4 3 5];
n = size(A,1);
for k=1:n
    imax = k;
    for i=k+1:n
        if A(i,k) > A(imax,k)
            imax = i;
        end
    end
    for j=1:n
        p = A(k,j);
        A(k,j) = A(imax,j);
        A(imax,j) = p;
    end
end
for k=1:n
    for i=k+1:n-1
        p=A(i,k)/A(k,k);
        for j=k:n
            A(i,j)=A(i,j)-p*A(k,j);
        end
    end
end
for k=1:n
    x(k) = A(k,n+1)/A(k,k);
end
A
x