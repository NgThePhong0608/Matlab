% Ham do nguoi dung lap: inline
% y=f(x)=x^2-4*x+3
% 1.Khoi tao ham bieu thuc inline truc tiep
f1=inline('x.^2-4.*x+3','x') % f1=@(x) (x.^2-4.*x+3)
% Hoac tu bien sym
syms x, f=x^2-4*x+3;
f2=inline(vectorize(f),'x') % f2= eval ([‘@(x)’,vectorize(f)])
% 2.Goi ham
xx=0:.1:5; 
yy1=subs(f,x,xx); % Cach 1
yy2=f2(xx); % Cach 2
% 3.Ve do thi
figure(1);plot(xx,yy1,'g')
figure(2);plot(xx,yy2,'b')
