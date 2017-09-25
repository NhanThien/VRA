strMessage = '\ Nhap n:';
n = input(strMessage);
s = 0;
for i = 1:n
    s = s + i;
end

fprintf('\n từ 1 -> %d co tong là %2d',n,s)