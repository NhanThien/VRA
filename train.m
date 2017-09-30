TatCaAnh = loadMNISTImages('train-images.idx3-ubyte');
% load dữ liệu : image train va lable train 
 imgTrainAll = loadMNISTImages('train-images.idx3-ubyte')
 lblTrainAll = loadMNISTLabels('train-labels.idx1-ubyte')
% load dữ liệu test  : image test va lable test  
 imgTestAll = loadMNISTImages('t10k-images.idx3-ubyte')
 lblTestAll = loadMNISTLabels('t10k-labels.idx1-ubyte');
% Số lương ảnh train
 nTrainImages = size(imgTrainAll,2);
% % Số lương lable  train
 nTrainLable = size(lblTrainAll,1);
% 
% % Số lương ảnh test 
 nTestImages = size(imgTestAll,2);
% % Số lương lable  test
nTestLable = size(lblTestAll,1);
% 
% 
% i = randi([1,64000]);
% Anh0001 = reshape(TatCaAnh(:,i),28,28);
% 
% imshow(Anh0001);