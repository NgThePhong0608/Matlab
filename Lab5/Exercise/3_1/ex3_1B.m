% Newton Interpolatiing polynomial
clc;clear all;close all;
X = [-4.2 -2.4 -1.1 2.1 4.9];
Y = [29.1456 -25.5774 65.2761 51.2001 -11.6679];
n=length(X)-1;
x=-2;
% Buoc 1: Tim ma tran sai phan
F=[Y',zeros(n+1,n)]
for j=2:n+1
    for i=j:n+1
        F(i,j)=(F(i,j-1)-F(i-1,j-1))/(X(i)-X(i-j+1));
    end
end
F
% Buoc 2: Tinh da thuc noi suy
D=diag(F);
P=0;
for i=1:n+1
    L=1;
    for j=1:i-1
        L=L*(x-X(j));
    end
    P=P+D(i)*L;
end
P