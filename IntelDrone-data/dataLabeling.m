clear all;
close all;

directory = dir('flightdata-8-28-2018');
%for i=1:10
file_name = directory(2+1).name;


data = csvread(strcat('flightdata-8-28-2018/','flight_path_data1535490345.csv'));
figure
alt = data(:,4);
x_vel = data(:,8);
y_vel = data(:,9);
z_vel = data(:,10);
plot(alt,'o')
hold on
plot(x_vel,'o')
plot(y_vel,'o')
plot(z_vel,'o')
legend('z','xv','yv','zv')
%end
y = zeros(length(alt),1);




% % flight_path_data1535490345
% y(1:2510) = 1;
% y(2511:2734) = 2;
% y(2735:3111) = 3;
% y(3112:3358) = 4;
% y(3359:3683) = 3;
% y(3684:4033) = 4;
% y(4034:4312) = 3;
% y(4313:4619) = 4;
% y(4620:4904) = 3;
% y(4905:5251) = 4;
% y(5252:5485) = 3;
% y(5486:5684) = 5;
% y(5685:end) = 1;
% 
% plot(y)
% x = [alt x_vel y_vel z_vel];
% inteldataset2 = [x y];
% csvwrite('inteldataset2.csv', inteldataset2)



% % flight_path_data1535484789
% y(1:4634) = 1;
% y(4635:4911) = 2;
% y(4912:5178) = 3;
% y(5179:5577) = 5;
% y(5578:end) = 1;
% 
% plot(y)
% x = [alt x_vel y_vel z_vel];
% inteldataset1 = [x y];
% csvwrite('inteldataset1.csv', inteldataset1)


