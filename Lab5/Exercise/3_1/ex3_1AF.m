function [P] = ex3_1AF(X,Y)
    n=length(X)-1;
    x=-2;
    P=0;
    for i=1:n+1
        L=1;
        for j=1:n+1
            if j~=i
                L=L*(x-X(j))/(X(i)-X(j));
            end
        end
        P=P+L*Y(i);
    end
end