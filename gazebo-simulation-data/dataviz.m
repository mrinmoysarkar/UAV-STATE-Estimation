clear all;
close all;

directory = dir('flight_path_data-v2');
%for i=1:10
file_name = directory(2+1).name;

data = csvread(strcat('flight_path_data-v2/','flight_path_data1534452132.csv'));
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


%flight_path_data1534452132
y(1:104,1) = 1; %hold
y(105:156,1) = 2; %takeoff
y(157:206,1) = 3; %hover
y(207:289,1) = 4; %search
y(290:306,1) = 3; %hover
y(307:389,1) = 4; %search
y(390:407,1) = 3; %hover
y(408:488,1) = 4; %search
y(489:510,1) = 3; %hover
y(511:579,1) = 4; %search
y(580:601,1) = 3; %hover
y(602:682,1) = 4; %search
y(683:700,1) = 3; %hover
y(701:802,1) = 4; %search
y(803:852,1) = 5; %land
y(853:end,1) = 1; %hold


% flight_path_data1534452047
% y(1:108,1) = 1; %hold
% y(109:167,1) = 2; %takeoff
% y(168:206,1) = 3; %hover
% y(207:285,1) = 4; %search
% y(286:305,1) = 3; %hold
% y(306:395,1) = 4; %search
% y(396:408,1) = 3; %hover
% y(409:480,1) = 4; %search
% y(481:507,1) = 3; %hover
% y(508:586,1) = 4; %search
% y(587:608,1) = 3; %hover
% y(609:686,1) = 4; %search
% y(687:709,1) = 3; %hover
% y(710:802,1) = 4; %search
% y(803:805,1) = 3; %hover
% y(806:843,1) = 5; %land
% y(844:end,1) = 1; %hold

plot(y)

x = [alt x_vel y_vel z_vel];

dt = fitctree(x,y);
view(dt,'mode','graph');

y_est = predict(dt,x);
figure
plot(y)
hold on
plot(y_est)

dif = y-y_est;

idx = dif==0;
correct_y = sum(idx);
accuracy = correct_y/length(y);
