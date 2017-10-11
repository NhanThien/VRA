i = 0 ;
digitArray = [];
while i < 10
    s = 0 ;
    digitIndex = [];
    for j = 1:60000
        if lblTrainAll(j) ==i
             digitIndex = [digitIndex,j];
            s = s + 1;
        end
    end
     digitArray = [digitArray,s];
     fprintf('%d',digitIndex);
     strFileName = ['index',num2str(i),'.csv']
     fprintf('label %d  co so luong %d \n ',i,s);
     i = i + 1 ;

end 
% y = [75 91 105 123.5 131 150 179 203 226 249 281.5];
% bar(digitArray)
csvwrite('csvlistTrain.csv',digitArray,0,0);
% csvwrite('csvLabellist.csv',digitArray,0,0);
