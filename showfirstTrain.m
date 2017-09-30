% hien thi anh thu 1 cua du lieu train
figure;
img = imgTrainAll(:,1);
img2d = reshape(img, 28,28);
strLableImage = num2str(lblTrainAll(1));
imshow(img2d);
title(strLableImage);
