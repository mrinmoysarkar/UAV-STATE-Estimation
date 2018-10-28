clear all;
close all;

x=[0,0,1,1,0,0,1,1,1,0,0];
y=[0,0,0,1,1,2,2,3,3,0,0];
z=[0,1,1,1,1,1,1,1,1,1,0];

plot3(x,y,z);
grid on
xlabel('X position in meter')
ylabel('Y position in meter')
zlabel('Z position in meter')
% hold on
% x=[1,0,0];
% y=[3,0,0];
% z=[1,1,0];
% plot3(x,y,z)