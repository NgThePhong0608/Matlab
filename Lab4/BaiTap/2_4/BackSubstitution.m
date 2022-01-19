function [x] = HPT(A)
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
    for i=1:n
        x(i) = A(i,n+1)/A(i,i);
    end
end

