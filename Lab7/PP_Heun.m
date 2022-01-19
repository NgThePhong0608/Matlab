function [y] = PP_Heun(f,h,x,y)
for k=1:length(x)-1
    p=y(k)+f(x(k),y(k))*h; % Predictor
    y(k+1)=y(k)+h*(f(x(k),y(k))+f(x(k+1),p))/2; % Corrector
end
plot(x,y,'g');