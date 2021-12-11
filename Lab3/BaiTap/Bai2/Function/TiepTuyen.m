function [x2, k] = TiepTuyen(f,x1,tol)
    df = diff(f);
    f = inline(vectorize(f),'x');
    df = inline(vectorize(df),'x');
    %x1 = 1.5;
    x2 = x1 - (f(x1)/df(x1));
    k = 1;
    while abs(f(x2)) > tol
        x2 = x1 - (f(x1)/df(x1));
        x1 = x2;
        k = k + 1;
    end;    
end