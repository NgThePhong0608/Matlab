function [] = ex3_3BF(X,Y)
    sp=spline(X,Y);
    sp.breaks
    sp.coefs
    xx=linspace(0,85,100);
    yy=fnval(sp,xx);
    figure(1);
    %fnplt(sp,[1,15])
    plot(xx,yy);hold on
    plot(X,Y,'sr');hold off;
end

