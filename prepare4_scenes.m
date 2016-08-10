clear all;
close all;


N=1100

posenet_format = '/Users/jimmy/Desktop/RGBD_4Scenes/kitchen/test.txt';
fileID = fopen(posenet_format,'w');



for i = 1:357
  poseRTFileName = sprintf('/Users/jimmy/Desktop/images/4_scenes/apt1/kitchen/data/frame-%06d.pose.txt', i-1);
  PoseRT=load(poseRTFileName);
  PoseTQ=PoseRT2PoseTQ(PoseRT);  
  rgb_filename=sprintf('image/frame-%06d.color.png', i-1);
  fprintf(fileID, '%s %.10f %.10f %.10f %10f %.10f %.10f %10f\n', rgb_filename, PoseQT(1),PoseQT(2),PoseQT(3),PoseQT(4),PoseQT(5),PoseQT(6),PoseQT(7));
end
fclose(fileID);
     

