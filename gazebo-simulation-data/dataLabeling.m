clear all;
close all;

directory = dir('flight_path_data-v2');
%for i=1:10
file_name = directory(2+1).name;

%data = csvread(strcat('flight_path_data-v2/','flight_path_data1534452411.csv'));
data = csvread(strcat('flight_path_data-v3/','flight_path_data1534867046.csv'));
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



% % flight_path_data1534867046
% y(1:102) = 1;
% y(103:151) = 2;
% y(152:203) = 3;
% y(204:802) = 4;
% y(803:866) = 5;
% y(867:end) = 1;
% axis([0 1010 -3 2])
% plot(y)
% x = [alt x_vel y_vel z_vel];
% dataset15 = [x y];
% csvwrite('dataset15.csv', dataset15)



% % flight_path_data1534866750
% y(1:123) = 1;
% y(124:177) = 2;
% y(178:207) = 3;
% y(208:292) = 4;
% y(293:306) = 3;
% y(307:389) = 4;
% y(390:405) = 3;
% y(406:483) = 4;
% y(484:509) = 3;
% y(510:804) = 4;
% y(805:887) = 5;
% y(888:end) = 1;
% 
% plot(y)
% x = [alt x_vel y_vel z_vel];
% dataset14 = [x y];
% csvwrite('dataset14.csv', dataset14)



% % flight_path_data1534866317
% y(1:101) = 1;
% y(102:147) = 2;
% y(148:207) = 3;
% y(208:802) = 4;
% y(803:857) = 5;
% y(858:end) = 1;
% 
% plot(y)
% x = [alt x_vel y_vel z_vel];
% dataset13 = [x y];
% csvwrite('dataset13.csv', dataset13)


% % flight_path_data1534866229
% y(1:103) = 1;
% y(104:159) = 2;
% y(160:207) = 3;
% y(208:291) = 4;
% y(292:309) = 3;
% y(310:488) = 4;
% y(489:507) = 3;
% y(508:803) = 4;
% y(804:885) = 5;
% y(886:end) = 1;
% 
% plot(y)
% x = [alt x_vel y_vel z_vel];
% dataset12 = [x y];
% csvwrite('dataset12.csv', dataset12)


% % flight_path_data1534866115
% y(1:108) = 1;
% y(109:159) = 2;
% y(160:207) = 3;
% y(208:802) = 4;
% y(803:847) = 5;
% y(848:end) = 1;
% 
% plot(y)
% x = [alt x_vel y_vel z_vel];
% dataset11 = [x y];
% csvwrite('dataset11.csv', dataset11)




% % flight_path_data1534865922
% y(1:103) = 1;
% y(104:140) = 2;
% y(141:204) = 3;
% y(205:803) = 4;
% y(804:852) = 5;
% y(853:end) = 1;
% 
% plot(y)
% x = [alt x_vel y_vel z_vel];
% dataset10 = [x y];
% csvwrite('dataset10.csv', dataset10)


% % flight_path_data1534865763
% y(1:103) = 1;
% y(104:147) = 2;
% y(148:205) = 3;
% y(206:487) = 4;
% y(488:505) = 3;
% y(506:801) = 4;
% y(802:853) = 5;
% y(854:end) = 1;
% 
% plot(y)
% x = [alt x_vel y_vel z_vel];
% dataset9 = [x y];
% csvwrite('dataset9.csv', dataset9)





% % flight_path_data1534865685
% y(1:104) = 1;
% y(105:153) = 2;
% y(154:209) = 3;
% y(210:478) = 4;
% y(479:510) = 3;
% y(511:803) = 4;
% y(804:862) = 5;
% y(863:end) = 1;
% 
% plot(y)
% x = [alt x_vel y_vel z_vel];
% dataset8 = [x y];
% csvwrite('dataset8.csv', dataset8)



% % flight_path_data1534865590
% y(1:101) = 1;
% y(102:157) = 2;
% y(158:204) = 3;
% y(205:483) = 4;
% y(484:508) = 3;
% y(509:801) = 4;
% y(802:868) = 5;
% y(869:end) = 1;
% 
% plot(y)
% x = [alt x_vel y_vel z_vel];
% dataset7 = [x y];
% csvwrite('dataset7.csv', dataset7)

% % flight_path_data1534865221
% y(1:104) = 1;
% y(105:169) = 2;
% y(170:207) = 3;
% y(208:802) = 4;
% y(803:872) = 5;
% y(873:end) = 1;
% 
% plot(y)
% x = [alt x_vel y_vel z_vel];
% dataset6 = [x y];
% csvwrite('dataset6.csv', dataset6)










% % flight_path_data1534865021
% y(1:104) = 1;
% y(105:155) = 2;
% y(156:206) = 3;
% y(207:803) = 4;
% y(804:837) = 5;
% y(838:end) = 1;
% 
% plot(y)
% x = [alt x_vel y_vel z_vel];
% dataset5 = [x y];
% csvwrite('dataset5.csv', dataset5)





% % flight_path_data1534864584
% y(1:106) = 1;
% y(107:170) = 2;
% y(171:204) = 3;
% y(205:803) = 4;
% y(804:836) = 5;
% y(837:end) = 1;
% 
% plot(y)
% x = [alt x_vel y_vel z_vel];
% dataset4 = [x y];
% csvwrite('dataset4.csv', dataset4)




% % flight_path_data1534452411
% y(1:103) = 1;
% y(104:165) = 2;
% y(166:203) = 3;
% y(204:281) = 4;
% y(282:305) = 3;
% y(306:385) = 4;
% y(386:400) = 3;
% y(401:485) = 4;
% y(486:506) = 3;
% y(507:590) = 4;
% y(591:605) = 3;
% y(606:692) = 4;
% y(693:708) = 3;
% y(709:795) = 4;
% y(796:803) = 3;
% y(804:859) = 5;
% y(860:end) = 1;
% 
% 
% plot(y)
% 
% x = [alt x_vel y_vel z_vel];
% 
% dataset3 = [x y];
% csvwrite('dataset3.csv', dataset3)


% %flight_path_data1534452132
% y(1:104,1) = 1; %hold
% y(105:156,1) = 2; %takeoff
% y(157:206,1) = 3; %hover
% y(207:289,1) = 4; %search
% y(290:306,1) = 3; %hover
% y(307:389,1) = 4; %search
% y(390:407,1) = 3; %hover
% y(408:488,1) = 4; %search
% y(489:510,1) = 3; %hover
% y(511:579,1) = 4; %search
% y(580:601,1) = 3; %hover
% y(602:682,1) = 4; %search
% y(683:700,1) = 3; %hover
% y(701:802,1) = 4; %search
% y(803:852,1) = 5; %land
% y(853:end,1) = 1; %hold
% 
% 
% 
% 
% 
% plot(y)
% 
% x = [alt x_vel y_vel z_vel];
% 
% dt = fitctree(x,y);
% view(dt,'mode','graph');
% 
% y_est = predict(dt,x);
% figure
% plot(y)
% hold on
% plot(y_est)
% 
% dif = y-y_est;
% 
% idx = dif==0;
% correct_y = sum(idx);
% accuracy = correct_y/length(y)
% 
% dataset1 = [x y];
% csvwrite('dataset1.csv',dataset1)
% %test
% data = csvread(strcat('flight_path_data-v2/','flight_path_data1534452132.csv'));
% 
% figure
% alt = data(:,4);
% x_vel = data(:,8);
% y_vel = data(:,9);
% z_vel = data(:,10);
% plot(alt,'o')
% hold on
% plot(x_vel,'o')
% plot(y_vel,'o')
% plot(z_vel,'o')
% legend('z','xv','yv','zv')
% %end
% y = zeros(length(alt),1);
% 
% %flight_path_data1534452047
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
% x = [alt x_vel y_vel z_vel];
% 
% % dt = fitctree(x,y);
% % view(dt,'mode','graph');
% 
% y_est = predict(dt,x);
% figure
% plot(y)
% hold on
% plot(y_est)
% 
% dif = y-y_est;
% 
% idx = dif==0;
% correct_y = sum(idx);
% accuracy = correct_y/length(y)
% dataset2 = [x y];
% csvwrite('dataset2.csv',dataset2)