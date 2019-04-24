clear all;
close all;

global yindex
yindex = 0;

data = csvread('flight_vertical_3.csv');
fig = figure;
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

dcm_obj = datacursormode(fig);
set(dcm_obj,'UpdateFcn',@myupdatefcn)
y = zeros(length(alt),1);

indx = 1;
while 1
    in = input('input label: ');
    if in == 7
        break;
    end
    y(yindex(indx)+1:yindex(indx+1)) = in;
    indx = indx + 1;
end
y(yindex(indx)+1:end) = 1;
plot(y)


newData = [alt x_vel y_vel z_vel y];
csvwrite('flight_vertical_3_labeled.csv',newData);
