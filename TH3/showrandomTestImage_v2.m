function showrandomTestImage_v2(n)
%     nTrainImage = size(imgTrainAll,2);
    imgTestAll = loadMNISTImages('t10k-images.idx3-ubyte')
    lblTestAll = loadMNISTLabels('t10k-labels.idx1-ubyte');
    nNumber = n;
    figure;
    img = imgTestAll(:,nNumber);
    img2D = reshape(img,28,28);
    strLabel = num2str(lblTestAll(nNumber));
    strLabel = [strLabel,'(',num2str(nNumber),')'] ;
    imshow(img2D);
    title(strLabel) 
end
