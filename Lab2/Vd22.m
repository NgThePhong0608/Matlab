clc;clear all;close all;
A=fix(1+49*rand(4));B=ones(4);C=A+B;
save mydata.mat C A B %Luu du lieu vao file
clear all %Xoa du lieu trong bo nho may tinh
load mydata.mat %Goi du lieu tu file
D = (C.^2)-A-B
