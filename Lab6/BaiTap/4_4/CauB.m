
x = 15*cos(pi*t/2 + pi/3);
xt = inline(vectorize(x),'x');
t = linspace(0,15,200);
dt = 1e-3;
for k = 1:length(t)
    vt(k) =(xt(t(k()+dt) - xt(t(k))))/dt;
end
figure(2)
fplot(t,vt);