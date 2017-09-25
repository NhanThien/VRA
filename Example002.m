strMessage = '\n Nhap m ';
m = input (strMessage);
strMessage = '\n Nhap n ';
n = input (strMessage);
a = ones(m,n);
fprintf('[%2d]',a);
b = zeros(m,n);
c = eye(m,n);
d = randi([-10,10],m,n);
a(1,1) = 20;
e = size(a)
