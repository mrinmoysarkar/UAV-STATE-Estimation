clear all;
close all;

dataset1 = csvread('dataset1.csv');
dataset2 = csvread('dataset2.csv');
dataset3 = csvread('dataset3.csv');
dataset4 = csvread('dataset4.csv');
data_partision = 0.9;


X = [dataset1(:,1:4);dataset2(:,1:4);dataset3(:,1:4)];
Y = [dataset1(:,end);dataset2(:,end);dataset3(:,end)];

shaffl = randperm(length(Y));
trainsample = fix(data_partision*length(shaffl));
trainX = X(shaffl(1:trainsample),:);
trainY = Y(shaffl(1:trainsample),:);

testX = X(shaffl(trainsample+1:end),:);
testY = Y(shaffl(trainsample+1:end),:);

dt = fitctree(trainX,trainY);
view(dt,'mode','graph');

y_est = predict(dt,trainX);
% figure
% plot(Y)
% hold on
% plot(y_est)

dif = trainY-y_est;

idx = dif==0;
correct_y = sum(idx);
trainaccuracy = correct_y/length(trainY)



y_est = predict(dt,testX);
% figure
% plot(Y)
% hold on
% plot(y_est)

dif = testY-y_est;
idx = dif==0;
correct_y = sum(idx);
testaccuracy = correct_y/length(testY)

data = dataset4;
y_predict = predict(dt,data(:,1:4));
dif = data(:,end) - y_predict;
idx = dif==0;
correct_y = sum(idx);
testaccuracy = correct_y/length(y_predict)