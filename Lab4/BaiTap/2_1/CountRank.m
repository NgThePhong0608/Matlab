function [count] = CountRank(A) 
    m = size(A,1);
    n = size(A,2);
    count = 0;
    for i = 1:m
        for j = 1:n
            if(A(i,j) ~= 0)
                count = count + 1;
            else 
                break;
            end
        end
    end
end

