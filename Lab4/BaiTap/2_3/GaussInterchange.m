function [A,x] = GaussInterchange(A)
    m = size(A,1); %hàng
    n = size(A,2); %c?t
    for i=1:n-1
        imax = i;
        for j=i+1:m
            if (abs(A(j,i)) > abs(A(imax,i)))
                imax = j;
            end
        end
        for j=1:n
           p = A(i,j);
           A(i,j) = A(imax,j);
           A(imax,j) = p;
        end
        for k=1:min(m-1,n)
            for i=k+1:m
                p=A(i,k)/A(k,k);
                for j=k:n
                    A(i,j)=A(i,j)-p*A(k,j);
                end
            end
        end
        x(i) = A(i,n+1)/A(i,i);
    end
end