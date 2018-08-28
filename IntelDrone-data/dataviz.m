clear all;
close all;

directory = dir('flightdata-8-28-2018');
%for i=1:10
file_name = directory(2+1).name;


data = csvread(strcat('flightdata-8-28-2018/','flight_path_data1535484789.csv'));
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



% flight_path_data1534867046
y(1:102) = 1;
y(103:151) = 2;
y(152:203) = 3;
y(204:802) = 4;
y(803:866) = 5;
y(867:end) = 1;

plot(y)
x = [alt x_vel y_vel z_vel];
dataset15 = [x y];
csvwrite('dataset15.csv', dataset15)


