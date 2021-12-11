% function [x,y,k ] = Gauss_SiedelF( A,B,tol )
%     x = zeros(1,size(A,1));
%     k = 0;
%     d = 1;
%     n = size(A,1);
%     while d > tol
%         x_old = x;
%         for i=1:size(A,1)
%             sum = 0;
%             for j= 1:i-1
%                 sum = sum + A(i,j) *x(j);
%             end
%             for j=i+1:n
%                 sum = sum + A(i,j) *x_old(j);
%             end
%             x(i) = (1/A(i,i)) * (B(i) - sum);
%         end
%         k = k + 1;
%         y(k,:) = x;
%         d = norm(x_old-x);
%     end
% end
% 

function [x,y,k ] = Gauss_SiedelF( A,B,tol )
    x = zeros(1,size(A,1));
    k = 0;
    d = 1;
    n = size(A,1);
    while d > tol
        x_old = x;
        for i=1:size(A,1)  
            sum = 0;
            for j=1:n
                if i ~= j
                   sum = sum + A(i,j) *x(j);
                end
            end
        x(i) = (1/A(i,i)) * (B(i) - sum);
        end
        k = k + 1;
        y(k,:) = x;
        d = norm(x_old-x);
    end
end
