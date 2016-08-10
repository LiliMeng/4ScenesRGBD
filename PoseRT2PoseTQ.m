function PoseTQ=PoseRT2PoseTQ(PoseRT)
% PoseRT2PoseQT: get a 7x1 Pose transformation Posenet format from 4x4 Pose transformation matrix from 4Scenes format
% PoseRT=PoseRT2PoseQT(PoseRT)
% IN: 
%     PoseTQ - 7x1 Pose transformation from TUM dataset format
% 
% OUT:
%     R -  4x4 Pose transformation matrix for 7Scenes format
%     
% Author: Lili Meng, July 8th, 2016
%close all;
%clear all;
%PoseRT=load('/Users/jimmy/Desktop/images/4_scenes/apt1/kitchen/data/frame-000000.pose.txt')
for i=1:3
    for j=1:3
        rot(i,j)=PoseRT(i,j);
    end
end

q=qGetQ(rot);

for i=1:3
    PoseTQ(i)=PoseRT(i,4);
end

for i=4:7
    PoseTQ(i)=q(i-3);
end


PoseTQ

%PoseRT=PoseTQ2PoseRT(PoseQT)
