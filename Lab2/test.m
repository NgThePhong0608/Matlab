clc;close all;clear all;
n = 3;
x = 2.0;
S = 0;
for i=0:3
    S = S + (x.^(2*i+1)) / (factorial(2*i+1));
end;
fprintf('S = %f\n',S);