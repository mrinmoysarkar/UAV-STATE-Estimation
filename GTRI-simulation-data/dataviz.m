clear all;
close all;

trainData = csvread('trainset.csv');
testData = csvread('testset.csv');

testx = testData(:,2:10);
testy = testData(:,11);
data_partision = 0.4;
shaffl = randperm(size(trainData,1));
trainsample = fix(data_partision*length(shaffl));


X = trainData(shaffl(1:trainsample),2:10);
Y = trainData(shaffl(1:trainsample),11);

tX = trainData(shaffl(1+trainsample:end),2:10);
tY = trainData(shaffl(1+trainsample:end),11);

dt = fitctree(X,Y);

view(dt,'mode','graph');

y_est = predict(dt,X);

dif = Y-y_est;

idx = dif==0;
correct_y = sum(idx);
trainaccuracy = correct_y/length(dif)

y_est = predict(dt,tX);

dif = tY-y_est;

idx = dif==0;
correct_y = sum(idx);
testaccuracy1 = correct_y/length(dif)

%%%%%%%%%%%%%%%
y_est = predict(dt,testx);

dif = testy-y_est;

idx = dif==0;
correct_y = sum(idx);
testaccuracy = correct_y/length(dif)