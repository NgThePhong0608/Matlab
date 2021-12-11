function [X, lambda] = PowerMethodF( A, X)
    N=8;
    for k=1:N
        w=A*X;
        X=w/norm(w);
    end
    X;
    lambda=(X'*A*X)/(X'*X);
end

