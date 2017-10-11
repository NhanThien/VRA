% Q5 + Q6 
%
function detectimage(n)
    imgTestAll = loadMNISTImages('t10k-images.idx3-ubyte')
    lblTestAll = loadMNISTLabels('t10k-labels.idx1-ubyte');
    imgTrainAll = loadMNISTImages('train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('train-labels.idx1-ubyte');
    Mdl = fitcknn(imgTrainAll',lblTrainAll)
    index = n;
    imgTest = imgTestAll(:,index);
    lbPredictTest = predict(Mdl,imgTest');
    fprintf('lbPredictTest % d\n',lbPredictTest);
    strLabel = lblTestAll(index);
    
    if strLabel == lbPredictTest
         fprintf('Label đúng');
    else
         fprintf('Label sai');
    end
    % show result
    figure;
    img = imgTestAll(:,index );
    img2D = reshape(img,28,28);
    strLabel = num2str(lblTestAll(index));
    strLabel = [strLabel,'(',num2str(index),')'] ;
    fprintf('strLabel % d\n',strLabel);
    imshow(img2D);
    title(strLabel);
end