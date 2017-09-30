% hien thi anh cuoi cung  cua du lieu train
figure;
imgLast = imgTrainAll(:,nTrainImages);
img2d = reshape(imgLast, 28,28);
strLableImage = num2str(lblTrainAll(nTrainLable));
imshow(img2d);
title(strLableImage);
