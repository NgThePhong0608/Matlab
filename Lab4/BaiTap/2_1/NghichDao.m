clc;clear all;close all;
A = fix(1 + 8*rand(3));
A2 = inv(A);
[m,n] = size(A);
A=[A,eye(m)];
A2
[m,n] = size(A);
[A] = GaussJordan(A);
for i=1:m
    h = A(i,i);
    for j=1:2*m
        A(i,j)=A(i,j)/h;
    end
end

for i=1:m
    for j=1:m
        A1(i,j) = A(i,j+m);
    end
end
A1