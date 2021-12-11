function [x2, k] = CatTuyen(f,x0,x1,tol) 
%     f = inline(vectorize(f),'x');
    x2=x0-(f(x0).*((x1-x0))/(f(x1)-f(x0)));
    k = 1;
    while abs(f(x2)>tol)
        x0=x1;
        x1 = x2;
        x2=x0-(f(x0).*((x1-x0))/(f(x1)-f(x0)));
        k=k+1;
    end;
end