% tinh sin(x), arctan(x), ln(x+1) theo khai trien taylor
% sinx
clc;close all; clear all; 
tol=1e-12; % Sai so
k=1;ak=1;fsin=0;
x=input('Nhap x: ');
while abs(ak)>tol
     ak=(((-1).^(k-1)).*(x.^(2*k - 1))./factorial(2*k - 1));
     fsin=fsin+ak;
     k=k+1;
end;
fprintf('fsin = %.4f\n', fsin);
fprintf('sin(x) = %.4f\n', sin(x));

% cos(x)
tol=1e-12; % Sai so
k=1;ak=1;fcos=1;

while abs(ak)>tol
     ak=((-1)^k).*(x.^(2*k))./factorial(2*k);
     fcos=fcos+ak;
     k=k+1;
end;
fprintf('fcos = %.4f\n', fcos);
fprintf('cos(x) = %.4f\n', cos(x));

% arctan(x)
tol=1e-12; % Sai so
k=1;ak=1;arctan=0;
while abs(ak)>tol
     ak=(((-1).^(k-1)).*(x.^(2*k - 1))./(2*k - 1));
     arctan=arctan+ak;
     k=k+1;
end;
fprintf('arctan = %.4f\n', arctan);

% ln(x + 1)
ak1 = 1;k1 = 1;ln1 = 0;
while abs(ak1)> tol
     ak1=(((-1)^(k1-1)).*((x.^(k1))/k1));
     ln1 = ln1 + ak1;
     k1=k1+1;
end;
fprintf('ln(x+1) = %.4f\n', ln1);
fprintf('ln(x+1) = %.4f\n', log10(x + 1)/log10(exp(1)));
% log10(1 + pi/4) / log10(e) = loge(1 + pi/4) = ln(1 + pi/4)

% sinh(x)
tol=1e-12; % Sai so
k2=1;ak2=1;fsinh=0;
while abs(ak2)>tol
     ak2=(x.^(2*k2 - 1))./factorial(2*k2 - 1);
     fsinh=fsinh+ak2;
     k2=k2+1;
end;
fprintf('fsinh = %.4f\n', fsinh);
fprintf('sinh(x) = %.4f\n', sinh(x));

% cosh(x)
tol=1e-12; % Sai so
k3=0;ak3=1;fcosh=0;
while abs(ak3)>tol
     ak3=(x.^(2*k3))./factorial(2*k3);
     fcosh=fcosh+ak3;
     k3=k3+1;
end;
fprintf('fcosh = %.4f\n', fcosh);
fprintf('cosh(x) = %.4f\n', cosh(x));

% exp(x)
tol=1e-12; % Sai so
k3=0;ak3=1;e=0;
while abs(ak3)>tol
     ak3=(x.^(k3))./factorial(k3);
     e=e+ak3;
     k3=k3+1;
end;
fprintf('e(x) = %.4f\n', e);
fprintf('e(x) = %.4f\n', exp(x));

