clc;clear all; close all;
syms t;
x = 15*cos((pi/2)*t + pi/3);
v = diff(x,'t');
a = diff(x,'t',2); % diff(v)
t = [0 15];

fplot(x,t,'*r-');
hold on;
fplot(v,t,'.g-');
fplot(a,t,'+b-');





























0