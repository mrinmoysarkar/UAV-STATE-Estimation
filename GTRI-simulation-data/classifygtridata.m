clear all;
close all;

dataset = csvread('dataset.csv');
trainacc = zeros(1,9);
testacc = trainacc;

for i=1:9
    tracc = 0;
    teacc = 0;
    for j=1:10
    
    data_partision = 0.1*i;
    
    
    X = dataset(:,2:10);
    Y = dataset(:,11);
    
    shaffl = randperm(length(Y));
    trainsample = fix(data_partision*length(shaffl));
    trainX = X(shaffl(1:trainsample),:);
    trainY = Y(shaffl(1:trainsample),:);
    
    testX = X(shaffl(trainsample+1:end),:);
    testY = Y(shaffl(trainsample+1:end),:);
    
    dt = fitctree(trainX,trainY);
    % view(dt,'mode','graph');
    
    y_est = predict(dt,trainX);
    
    dif = trainY-y_est;
    idx = dif==0;
    correct_y = sum(idx);
    trainaccuracy = correct_y/length(dif);
    
    y_est = predict(dt,testX);
    % figure
    % plot(Y)
    % hold on
    % plot(y_est)
    % legend('Y','yest')
    
    dif = testY-y_est;
    idx = dif==0;
    correct_y = sum(idx);
    testaccuracy = correct_y/length(dif);
    
    tracc = tracc + trainaccuracy;
    teacc = teacc + testaccuracy;
    end
    trainacc(i) = tracc/10;
    testacc(i) = teacc/10;
end

partision = 0.1:0.1:0.9;

plot(partision,trainacc);
hold on;
plot(partision,testacc);

legend('trainacc','testacc')
