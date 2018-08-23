clear all;
close all;

dataset = csvread('gazeboSimulationData.csv');
data_partision = 0.9;


X = dataset(:,1:4);
Y = dataset(:,end);

shaffl = randperm(length(Y));
trainsample = fix(data_partision*length(shaffl));
trainX = X(shaffl(1:trainsample),:);
trainY = Y(shaffl(1:trainsample),:);

testX = X(shaffl(trainsample+1:end),:);
testY = Y(shaffl(trainsample+1:end),:);

dt = fitctree(trainX,trainY);
view(dt,'mode','graph');

y_est = predict(dt,trainX);

dif = trainY-y_est;
idx = dif==0;
correct_y = sum(idx);
trainaccuracy = correct_y/length(dif)

y_est = predict(dt,testX);
figure
plot(Y)
hold on
plot(y_est)
legend('Y','yest')

dif = testY-y_est;
idx = dif==0;
correct_y = sum(idx);
testaccuracy = correct_y/length(dif)

