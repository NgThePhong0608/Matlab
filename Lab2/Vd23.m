% if end
clc;clear all;close all;
t=input(' Nhap so tuoi cua ban= ');
if (t>1)&(t<=10)
 disp('Ban la nhi dong');
elseif (t>10)&(t<=15)
 disp('Ban la thieu nien');
elseif (t>15)&(t<=35)
 disp('Ban la thanh nien');
elseif (t>35)&(t<=50)
 disp('Ban la trung nien');
elseif (t>50)&(t<=100)
 disp('Hay gia nhap hoi nguoi cao tuoi');
else
 disp('Ban qua gia hoac khong ton tai');
end;