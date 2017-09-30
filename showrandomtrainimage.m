% hien ngau nhien ảnh cua tap huan luyen
nTrainImage = size(imgTrainAll,2);
nNumber = randi([1,nTrainImage]);
figure;
img = imgTrainAll(:,nNumber);
img2D = reshape(img,28,28);
strLabel = num2str(lblTrainAll(nNumber));
strLabel = [strLabel,'(',num2str(nNumber),')'] ;
imshow(img2D);
title(strLabel) 
