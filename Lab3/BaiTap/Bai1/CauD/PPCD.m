function [c, k] = PPCD(f,a,b,tol)
    a = 0; b = 10;
    fplot(char(y), [a d]);
    f = inline(vectorize(y),'x');
    tol = 1e-9;
    c = (a+b)/2;
    k = 1;
    while abs(f(c)) > tol 
        if f(a)*f(b) > 0 
            a = c
        else
            b = c;
        end;
        c = (a+b)/2;
        k = k + 1;
    end;
end

