clear all; clc;
% A=[2 4 3 4;3 1 -2 -2;4 11 7 7];%A=[A|b]
A = [2 -4 4 -2 ; 4 -8 7 2 ; -1 4 3 5];
n=size(A,1);
% Gauss Elimination
for k=1:n-1
    for i=k+1:n
        p=A(i,k)/A(k,k);
        for j=k:n+1
            A(i,j)=A(i,j)-p*A(k,j);
        end
    end
end
A
% Back substitution
for i=n:-1:1
    S=0;
    for j=i+1:n
        S=S+A(i,j)*x(j);
    end
    x(i,1)=(A(i,n+1)-S)/A(i,i);
end
A;x