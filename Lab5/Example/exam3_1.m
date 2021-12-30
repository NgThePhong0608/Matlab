clc;clear all;close all;
X=[-1.5 0.5 1.5 3.5];
Y=[-7.875 5.625 1.875 3.375];
n=length(X)-1;
x=-2;
P=0;
for i=1:n+1
    L=1;
    for j=1:n+1
        if j~=i
           L=L*(x-X(j))/(X(i)-X(j));
        end
    end
    P=P+L*Y(i);
end
P