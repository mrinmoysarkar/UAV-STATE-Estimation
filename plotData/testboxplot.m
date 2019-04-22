close all;
clear all;

% x=1:10;
% y=100:110;
% 
% boxplot([x;y]','Orientation','horizontal')

figure
ax = gca;
x=zeros(1,11);
y=zeros(1,11);
z=0:10;
h1=plot3(x,y,z,'b-*','LineWidth',2,'MarkerSize',10);
hold on

x=0:10;
y=zeros(1,11);
z=linspace(10,15,11);
h2=plot3(x,y,z,'r-o','LineWidth',2,'MarkerSize',10);
hold on

x=ones(1,11)*10;
y=linspace(0,5,11);
z=ones(1,11)*15;
h3=plot3(x,y,z,'g-p','LineWidth',2,'MarkerSize',10);
hold on

x=10:-1:0;
y=ones(1,11)*5;
z=ones(1,11)*15;
h4=plot3(x,y,z,'g-p','LineWidth',2,'MarkerSize',10);
hold on

x=ones(1,11)*0;
y=linspace(5,10,11);
z=linspace(15,10,11);
h5=plot3(x,y,z,'r-o','LineWidth',2,'MarkerSize',10);
hold on

x=0:10;
y=ones(1,11)*10;
z=ones(1,11)*10;
h6=plot3(x,y,z,'g-p','LineWidth',2,'MarkerSize',10);
hold on

x=linspace(10,2,11);
y=linspace(10,2,11);
z=ones(1,11)*10;
h7=plot3(x,y,z,'g-p','LineWidth',2,'MarkerSize',10);
hold on

x=linspace(2,0,11);
y=linspace(2,0,11);
z=linspace(10,0,11);
h8=plot3(x,y,z,'m-x','LineWidth',2,'MarkerSize',10);
hold on

xlabel('X in m','FontSize',16)
ylabel('Y in m','FontSize',16)
zlabel('Z in m','FontSize',16)
legend([h1,h2,h3,h8],{'vertical takeoff','variable altitude','constant altitude','ambiguous landing'},'FontSize',18)
ax.FontSize = 16;