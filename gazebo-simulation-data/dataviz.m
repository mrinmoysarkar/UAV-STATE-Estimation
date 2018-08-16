clear all;
close all;

directory = dir('flight_path_data');
%for i=1:10
file_name = directory(2+1).name

data = csvread(strcat('flight_path_data/',file_name));
figure
plot(data(:,7))
hold on
plot(data(:,8))
plot(data(:,9))
legend('x','y','z')
%end