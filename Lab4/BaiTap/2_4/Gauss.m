function [A] = Gauss(A)
    m = size(A,1);n = size(A,2);
    for k=1:min(n - 1,m)
        for i=k+1:m
            p=A(i,k)/A(k,k);
            for j=k:n
                A(i,j)=A(i,j)-p*A(k,j);
            end
        end
    end
end