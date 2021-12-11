figure(1)
x = 0:0.5:10;
y1 = cos(2*x)./(x+1)+1.2;
y2=0.1*x.*cos(2*x)+1.2;
plot(x,y1,':+b',x,y2,'-*r')
title('Do thi 2 dao dong');
xlabel('t-thoi gian');ylabel('x-li do');
legend('x= cos(2*t)/(t+1)+1.2','x= 0.1*t*cos(2*t)+1.2',2);
text(9.2,2.2,'Cuc dai');gtext('Cuc tieu');

figure(2) 
title('sin(x^3)');
fx=@(x)sin(x^3);
xlim=[0 5];
fplot(fx,xlim,'.r-')

figure(3)
xylim=[0 4 -1 1];
subplot(2,1,1); %<fx>- bieu thuc char
syms x ; fx1= @(x)sin(x.^3)
ezplot(fx1,xylim);
subplot(2,1,2); %<fx1>- bieu thuc sym 
h=ezplot(fx1,xlim); set(h,'color','r');

figure(4);
syms t;
xx=16*(sin(t).^3);
yy=13*cos(t)-5*cos(2*t)-2*cos(3*t);
t1 = [0 2*pi];
hx=ezplot(xx,yy,t1);
set(hx,'color','b','linewidth',3);
axis square;shg;

