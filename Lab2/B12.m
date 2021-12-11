figure(1);
syms t;
x = 15*cos((pi/2*t) + (-pi/2));
t = [0 2*pi]
fplot(x, t, '+g-');
hold on;
v = diff(x);
fplot(v,t,'.r-');
a = diff(v);
fplot(a,t,'*b-');

title('Do thi phuong trinh dao dong dieu hoa');
xlabel('t - thoi gian'); 
ylabel('A - bien do dao dong');
legend('x(t)', 'y(t)' ,'a(t)');

figure(2);
fplot(x,v,t);
hold on;
fplot(x,a,t);
fplot(v,a,t);




