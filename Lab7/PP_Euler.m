function [y] = PP_Euler(f,h,x,y)
for k=1:length(x)-1
   y(k+1)=y(k)+f(x(k),y(k))*h;
end
plot(x,y,'r');