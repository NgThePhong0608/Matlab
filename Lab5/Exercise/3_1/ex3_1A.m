clc; close all; clear all;
x = [-4.2 -2.4 -1.1 2.1 4.9];
y = [29.1456 -25.5774 65.2761 51.2001 -11.6679];

X = input('Enter the value of X: ');

for i = 1:size(x:2)
    x1 = x;
    x1(i) = [];
    l(i) = prod(X-x1)./prod(x(i)-x1);
end
Y = sum(1.*y);
fprintf('Value of Y at X = %f is %f\n',X,Y);