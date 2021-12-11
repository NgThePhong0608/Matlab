function [A] = GaussJordan(A)
    [n,m] = size(A);
    for k=1:min(m,n)
        for i=1:n
            if i ~= k
                p = A(i,k)/A(k,k);
                for j=1:m
                    A(i,j) = A(i,j) - p*A(k,j);
                end
            end
        end
    end
%     for k=1:min(m-1,n)
%         for i=k+1:m
%             p = A(i,k)/A(k,k);
%             for j=k:n
%                 A(i,j) = A(i,j) - p*A(k,j);
%             end
%         end
%     end
% 
%     for k=min(m,n):-1:2
%         for i=k-1:-1:1
%             p = A(i,k)/A(k,k);
%             for j=k:n
%                 A(i,j) = A(i,j) - p*A(k,j);
%             end
%         end
%     end
%     d = 1;
%     for i=1:m
%         d = d * A(i,i);
%     end
%     m = m * 2;
%     C = A;
%     for i=1:n
%         for j=n+1:m
%             if(i == (j-n)) 
%                 C(i,j) = 1;
%             else
%                 C(i,j) = 0;
%             end
%         end
%     end
%     C
%     if d ~= 0
%         for i=1:n
%             for j=n+1:m
%                 C(i,j) = C(i,j) / C(i,i);
%             end
%         end
%         
%         for i=1:n
%             for j=n+1:m
%                 C(i,i) = C(i,i) / C(i,i);
%                 B(i,j-n) = C(i,j);
%             end
%         end
%     end
%     C
end


