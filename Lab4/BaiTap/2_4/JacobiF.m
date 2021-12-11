function [k, X0] = JacobiF(A,B, tol)
    d = 1;
    n=length(B); 
    X0=zeros(1,n);    
    while (sqrt(d) > tol)
        for k=1:n     
            for i=1:n         
                S=0;         
                for j=1:n             
                    if j~=i                 
                        S=S+A(i,j)*X0(j);             
                    end
                end
                X1(i)=(B(i)-S)/A(i,i);     
            end
            X0=X1;
        end
        d = 0;
        for i=1:n
            d = d +(X1(i) - X0(i))*(X1(i) - X0(i));
        end
        k = k+1;
        X0 = X1;
    end
end

