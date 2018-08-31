clear all;
close all;

dataset = csvread('gazeboSimulationData.csv');
trainacc = zeros(1,9);
testacc = trainacc;

alp = 0:0.1:0.9;
tloss = zeros(length(alp),3);
tlossindx = 1;

predaccu = tloss;

for i=1:9
    tracc = 0;
    teacc = 0;
    for j=1:10
        
        data_partision = 0.1*i;
        
        
        X = dataset(:,1:4);
        Y = dataset(:,end);
        Y_c = cell(length(Y),1);
        Y_name = {'Hold','Takeoff','Hover','Search','Land'};
        for indx=1:length(Y)
            Y_c(indx) = Y_name(Y(indx));
        end
        Y = Y_c;
        
        shaffl = randperm(length(Y));
        trainsample = fix(data_partision*length(shaffl));
        trainX = X(shaffl(1:trainsample),:);
        trainY = Y(shaffl(1:trainsample),:);
        
        testX = X(shaffl(trainsample+1:end),:);
        testY = Y(shaffl(trainsample+1:end),:);
        
        dt = fitctree(trainX,trainY);
        % view(dt,'mode','graph');
        % dt = prune(dt);
        y_est = predict(dt,trainX);
        
        %dif = trainY-y_est;
        %idx = dif==0;
        correct_y = diffoutput(trainY, y_est);%sum(idx);
        trainaccuracy = correct_y/length(trainY);
        
        y_est = predict(dt,testX);
        % figure
        % plot(Y)
        % hold on
        % plot(y_est)
        % legend('Y','yest')
        
        %dif = testY-y_est;
        %idx = dif==0;
        correct_y = diffoutput(testY, y_est);%sum(idx);
        testaccuracy = correct_y/length(testY);
        
        tracc = tracc + trainaccuracy;
        teacc = teacc + testaccuracy;
        if i == 3 || i == 5 || i == 8
            trainloss = zeros(length(alp),1);
            paccu = predaccu(:,tlossindx); 
            for k=1:length(alp)
                alpha = alp(k);
                Level = fix(alpha*max(dt.PruneList));
                dtpruned = prune(dt,'Level',Level);
                totaltrainingloss = loss(dtpruned, trainX, trainY)/length(trainY);
                trainloss(k) = totaltrainingloss;
                
                y_est = predict(dtpruned,testX);
                correct_y = diffoutput(testY, y_est);
                paccu(k) = correct_y/length(testY);
            end
            tloss(:,tlossindx) = tloss(:,tlossindx) + trainloss;
            predaccu(:,tlossindx)  = predaccu(:,tlossindx) + paccu;
        end
    end
    trainacc(i) = tracc/10;
    testacc(i) = teacc/10;
    if (i == 3) || (i == 5) || (i == 8)
        predaccu(:,tlossindx) = predaccu(:,tlossindx)./10;
        tloss(:,tlossindx) = tloss(:,tlossindx)./10;
        tlossindx = tlossindx + 1;
    end
    
end

partision = 0.1:0.1:0.9;

plot(partision,trainacc*100,'--v');
hold on;
plot(partision,testacc*100,'--^');
xlabel('Fraction Of data used for training')
ylabel('Percent accuracy')

legend('trainacc','testacc')

figure
plot(alp,tloss(:,1),'--o')
hold on;
plot(alp, tloss(:,2),'--+')
plot(alp, tloss(:,3),'--*')

xlabel('prune label')
ylabel('training loss')

legend('data partision = 0.3','data partision = 0.5','data partision = 0.8')

figure
plot(alp,predaccu(:,1)*100,'--o')
hold on;
plot(alp, predaccu(:,2)*100,'--+')
plot(alp, predaccu(:,3)*100,'--*')

xlabel('prune label')
ylabel('prediction accuracy')

legend('data partision = 0.3','data partision = 0.5','data partision = 0.8')



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


 
% alpha = 0.9;
% Level = fix(alpha*max(dt.PruneList));
% dtpruned = prune(dt,'Level',Level);
% inspect(dt)
% tr = view(dt);
% allHandles = findall(tr,'Type','text');
% set(allHandles,'FontSize',16);
% uncomment to view the trained tree
% view(dtpruned,'mode','graph');
% totaltrainingloss = loss(dtpruned, X, Y)/length(Y);

