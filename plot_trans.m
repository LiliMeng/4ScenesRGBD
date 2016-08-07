clear all;
close all;
trans=load('/Users/jimmy/Desktop/RGBD_4Scenes/data_preparation/trans.txt');

N1=size(trans);
N=N1(1);

for i=1:364
    x(i)=trans(i,1);
    y(i)=trans(i,2);
    z(i)=trans(i,3);   
end



figure;
scatter(x,y,'filled');
title('camera 2D pose')
xlabel('x position');
ylabel('y position');
xlim([-7,-5]);




figure;
scatter3(x,y,z,'filled');
title('Camera Pose');
xlabel('x position (meter)'); % x-axis label
ylabel('y position (meter)');% y-axis label
zlabel('z position (meter)');% z-axis label
xlim([-7,-5])
