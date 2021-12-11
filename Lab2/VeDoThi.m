syms t;
x = 15*cos((pi/2)*t - pi/2);
v = diff(x);
a = diff(v);
t = [0 2*pi];

fplot(x,t,'*r-');
hold on;
fplot(v,t,'.g-');
fplot(a,t,'+b-');

legend('x(t)','v(t)','a(t)');
title('Do thi phuong trinh dao dong dieu hoa');
xlabel('t - thoi gian');
ylabel('A - bien do');

figure(2);
ezplot(x,v, [0 2*pi]);
hold on;
ezplot(x,a, [0 2*pi]);
ezplot(a,v, [0 2*pi]);


