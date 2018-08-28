clear all;
close all;

dataset = csvread('gazeboSimulationData.csv');
trainacc = zeros(1,9);
testacc = trainacc;

for i=1:9
    tracc = 0;
    teacc = 0;
    for j=1:10
    
    data_partision = 0.1*i;
    
    
    X = dataset(:,1:4);
    Y = dataset(:,end);
    
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

plot(partision,trainacc*100,'--v');
hold on;
plot(partision,testacc*100,'--^');
xlabel('Fraction Of data used for training')
ylabel('Percent accuracy')

legend('trainacc','testacc')

% data = csvread(strcat('C:\Users\msarkar\Documents\git-repos\UAV-STATE-Estimation\IntelDrone-data\flightdata-8-28-2018/','flight_path_data1535484789.csv'));
% alt = data(:,4);
% x_vel = data(:,8);
% y_vel = data(:,9);
% z_vel = data(:,10);
% 
% X = [alt x_vel y_vel z_vel];
% Y = predict(dt,X);
% 
% figure
% plot(alt,'o')
% hold on
% plot(x_vel,'o')
% plot(y_vel,'o')
% plot(z_vel,'o')
% 
% plot(Y,'o')
% legend('z','xv','yv','zv','y')