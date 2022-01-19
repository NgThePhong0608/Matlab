function [y] = PP_RK4(f,h,x,y)
for k=1:length(x)-1
    y1=f(x(k),y(k));
    y2=f(x(k)+h/2,y(k)+h/2*y1);
    y3=f(x(k)+h/2,y(k)+h/2*y2);
    y4=f(x(k)+h,y(k)+h*y3);
    y(k+1)=y(k)+(y1+2*y2+2*y3+y4)*h/6;
end
plot(x,y,'r');