clc;clear;close all; 
A=[5 -2 3;-3 9 1;2 -1 -7]; 
b=[-1;2;3]; 

n=length(b); 
X0=[0 0 0];   
N=8; 
for k=1:N     
    for i=1:n         
        S=0;         
        for j=1:n             
            if j~=i                 
                S=S+A(i,j)*X0(j);             
            end
        end
        X1(i)=(b(i)-S)/A(i,i);     
    end
    X0=X1 
end