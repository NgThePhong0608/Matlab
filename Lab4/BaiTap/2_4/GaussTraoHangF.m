function [A,x] = GaussTraoHangF(A)
n = size(A,1);
for k =1:n-1
    imax = k;
    for i=k+1:n
        if (A(i,k) > A(imax,k))
            imax = i;
        end
    end
    for j=1:n+1
        p=A(k,j);
        A(k,j)=A(imax,j);
        A(imax,j) = p;
    end
end
A = Gauss(A); % Ma tr?n A sau khi kh? gauss
x = BackSubstitution(A); % Gi?i ng??c tìm nghi?m x
end

