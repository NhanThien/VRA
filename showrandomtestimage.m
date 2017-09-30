% hien ngau nhien ảnh cua tap huan luyen
nTestImage = size(imgTestAll,2);
nNumber = randi([1,nTestImage]);
figure;
img = imgTestAll(:,nNumber);
img2D = reshape(img,28,28);
strLabel = num2str(lblTestAll(nNumber));
strLabel = [strLabel,'(',num2str(nNumber),')'] ;
imshow(img2D);
title(strLabel) 