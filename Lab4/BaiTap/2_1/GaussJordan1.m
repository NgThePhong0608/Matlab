clc; close all; clear all;
A=[2 -1 1;3 1 -1;1 -3 2] ;
m = size(A,1);
n = size(A,2);

 for k=1:min(m,n)
      for i=1:m
          if i ~= k
             p = A(i,k)/A(k,k);
             for j=1:n
                    A(i,j) = A(i,j) - p*A(k,j);
             end
          end
      end
 end
% for k= 1:min(m-1,n)
%     for i =k+1:m
%         p = A(i,k)/A(k,k);
%         for j=k:n
%             A(i,j) = A(i,j) - p*A(k,j);
%         end
%     end
% end
% 
% for k=min(m,n):-1:2
%     for i=k-1:-1:1
%         p = A(i,k)/A(k,k);
%         for j=k:n
%             A(i,j) = A(i,j) - p*A(k,j);
%         end
%     end
% end
A
