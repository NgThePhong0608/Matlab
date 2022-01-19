function [y] = PP_MidPoint(f,h,x,y)
for k=1:length(x)-1
    p=y(k)+f(x(k),y(k))*h/2; % Predictor
    y(k+1)=y(k)+h*f(x(k)+h/2,p); % Corrector
end
plot(x,y,'g');