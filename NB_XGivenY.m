function [D] = NB_XGivenY(XTrain, yTrain)
[nrows,ncols] = size(XTrain);
%find logical indexes which have output class 1 and 2
index_one = yTrain == 1 ;
index_two = yTrain == 2 ;

%separate matrixes for the two output class labels
train_one = XTrain(index_one,:);
train_two = XTrain(index_two,:);

%sum of every column is number of times a word appears in a doc of label y
posterior_one = sum(train_one,1);
posterior_two = sum(train_two,1);


%form a prior which is a Beta distribution
B1 = 1.001;
B0 = 1.9;

f1 = posterior_one .+ B1 - 1 ;
f12 = posterior_two .+ B1 -1 ;
f2 = sum(m = yTrain == 1) + B0 + B1 - 2;
f22 = sum(m = yTrain == 2) + B0 + B1 -2;

MAP_one = f1 ./ f2;
MAP_two = f12 ./ f22;

D = [MAP_one;MAP_two];

end
