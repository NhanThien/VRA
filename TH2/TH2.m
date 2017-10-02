% Q1 - Hãy cho biết câu lệnh tạo ngẫu nhiên một số trong đoạn [1 200].
% Q2 - Hãy cho biết câu lệnh truy cập phần tử dòng 3, cột 5 của ma trận A.	
% Q3 - Hãy cho biết lệnh tạo ma trận A kích thước 100x200 và các giá trị đều là zero (0).	
% Q4 - Hãy cho biết lệnh lấy số dòng của ma trận A.	
% Q5 - Hãy cho biết lệnh lấy vector cột 10 của ma trận A.	
% Q6 - Hãy cho biết lệnh lấy vector dòng 10 của ma trận A.	
% Q7 - Hãy cho biết lệnh chuyển vector dòng thành ma trận 28x28.

% rand[1 200]
a = rand();
r = randi([1,200]);
% value at row = 3, col = 5
strRow = '';
strCol = '';
mRow = input (strRow);
mCol = input (strCol)
matrixD = randi([-10,10],mRow,mCol);
x = matrixD(3,5);
fprintf('values %d',x);
%  matrix 100x100 zero
zeroArr = zeros(100,100);
% get row 
countRow = size(matrixD,1);
countCol = size(matrixD,2);
%  get vector Col thu 10
vetcorCol10 = matrixD(:,10);
%  get vector Row thu 10
vetcorRow10 = matrixD(10,:);
% reshape
a = 28 * 28;
aArray = randi([-10,10],a,1);
xReshape = reshape(aArray,28,28);




