function [ S ] = CauAF( f,a,b,c,d,e,h )
    f = inline(vectorize(f),'x','y','z');
    x = a + (b-a)*rand(1,N);
    y = c + (d-c)*rand(1,N);
    z = e + (h-e)*rand(1,N);
    S = 0;
    for k=1:N
        S = S + f(x(k),y(k),z(k));
    end
    S*(b-a)*(d-c)*(h-e)/N;
end

