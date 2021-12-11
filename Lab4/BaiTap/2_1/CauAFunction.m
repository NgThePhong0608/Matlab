function [A,d,d1] = CauAFunction(A)
    n = size(A,1);
    for k=1:n-1
        for i=k+1:n
            p=A(i,k)/A(k,k);
            for j=k:n
                A(i,j)=A(i,j)-p*A(k,j);
            end
        end
    end
    d1 = det(A);
    d = 1;
    for i= 1: n
        d = d * A(i,i);
    end
end

