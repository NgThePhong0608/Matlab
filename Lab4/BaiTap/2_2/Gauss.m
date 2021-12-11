function [A,x] = Gauss(A)
    m = size(A,1);
    n = size(A,2);
    for k=1:min(m-1,n)
        for i=k+1:m
            p=A(i,k)/A(k,k);
            for j=k:n
                A(i,j)=A(i,j)-p*A(k,j);
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

