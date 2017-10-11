function showrandomTrainImage_v2(n)
%     nTrainImage = size(imgTrainAll,2);
    imgTrainAll = loadMNISTImages('train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('train-labels.idx1-ubyte')

    nNumber = 500
    figure;
    img = imgTrainAll(:,nNumber);
    img2D = reshape(img,28,28);
    strLabel = num2str(lblTrainAll(nNumber));
    strLabel = [strLabel,'(',num2str(nNumber),')'] ;
    imshow(img2D);
    title(strLabel) 
end
