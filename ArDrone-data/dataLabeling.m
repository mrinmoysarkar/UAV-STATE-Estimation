% clear all;
% close all;
% 
% 
% load data.mat
% alt = data.z;
% x_vel = conv(data.x,[1;-1])./0.0010;%conv(data.time,[1;-1]);
% y_vel = conv(data.y,[1;-1])./0.0010;%conv(data.time,[1;-1]);
% z_vel = conv(data.z,[1;-1])./0.0010;%conv(data.time,[1;-1]);
% 
% alt = alt./max(alt);
% x_vel1 = x_vel./max(abs(x_vel));
% y_vel = 1+2*(y_vel-max(y_vel))/(max(y_vel)-min(y_vel));
% z_vel = 1+2*(z_vel-max(z_vel))/(max(z_vel)-min(z_vel));
% 
% x_vel(end) = [];
% y_vel(end) = [];
% z_vel(end) = [];
% figure
% plot(alt,'o')
% hold on
% plot(x_vel,'o')
% plot(y_vel,'o')
% plot(z_vel,'o')
% legend('z','xv','yv','zv')
% grid on;
% y = zeros(length(alt),1);
% 
% 
% 
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
% %plot(y)
% x = [alt x_vel y_vel z_vel];
% ardronedataset1 = [x y];
% csvwrite('ardronedataset1.csv', ardronedataset1)




clear all;
close all;

global yindex
yindex = 0;
data = csvread('ardronedataset1.csv');

fig = figure;
alt = data(:,1);
alt = alt./max(abs(alt));
x_vel = data(:,2);
x_vel(x_vel==-54.1070) = -13.7;
x_vel = x_vel./max(abs(x_vel));
y_vel = data(:,3);
y_vel = y_vel./max(abs(y_vel));
z_vel = data(:,4);
z_vel = z_vel./max(abs(z_vel));
%subplot(221)
plot(alt,'o')
hold on
%subplot(222)
plot(x_vel,'o')
%subplot(223)
plot(y_vel,'o')
%subplot(224)
plot(z_vel,'o')
legend('z','xv','yv','zv')

dcm_obj = datacursormode(fig);
set(dcm_obj,'UpdateFcn',@myupdatefcn)
y = zeros(length(alt),1);
%xlim([i1 i2])
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

x = [alt x_vel y_vel z_vel];
arDroneData = [x y];
% csvwrite('arDroneData.csv', arDroneData)
