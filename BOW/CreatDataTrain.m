function CreatDataTrain()
imgTrainAll = loadMNISTImages('train-images.idx3-ubyte');
lblTrainAll = loadMNISTLabels('train-labels.idx1-ubyte');
nTrainImage = size(imgTrainAll,2);
% for i = 0:9
%     mkdir(['DataTrain\' num2str(i)]);
% end
index = zeros(1,10);
for i = 1 : 5
    imgI = imgTrainAll(:,i);
    img2D = reshape(imgI,28,28);
    category = 0;
    strFileName = ['iamge_',num2str(index(1, category + 1),'%05d'),'.jpg'];
    strPath= ['DataTrain\',num2str(category),'\',strFileName];
%     fprintf('%s',strPath)
    imwrite(img2D,strPath);
    index (1,category + 1) = index (1, category +1) + 1;
end
end