function [X, lambda] = PowerMethod1F( A, X)
    n = size(A,1);
    for k=1:n
        w=inv(A)*X;
        X=w/norm(w);
    end
    X;
    lambda=(X'*A*X)/(X'*X);
end

