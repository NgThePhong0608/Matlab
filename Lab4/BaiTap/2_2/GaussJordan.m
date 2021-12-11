function [A,x] = GaussJordan(A)
    m = size(A,1);
    n = size(A,2);
    for k=1:min(m,n)
        for i=1:m
            if i ~= k
                p = A(i,k) / A(k,k);
                for j=1:n
                    A(i,j) = A(i,j) - p*A(k,j);
                end
            end
        end
    end
    for i=m:-1:1
        S=0;
        for j=i+1:m
            S=S+A(i,j)*x(j);
        end
        x(i,1)=(A(i,m+1)-S)/A(i,i);
    end
end

