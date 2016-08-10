clear all;
close all;


N=1100

posenet_format = '/Users/jimmy/Desktop/RGBD_4Scenes/apt1/living/data_test.txt';
fileID = fopen(posenet_format,'w');



for i = 1:493
  poseRTFileName = sprintf('/Users/jimmy/Desktop/images/4_scenes/apt1/living/data/frame-%06d.pose.txt', i-1);
  PoseRT=load(poseRTFileName);
  PoseTQ=PoseRT2PoseTQ(PoseRT);  
  rgb_filename=sprintf('image/frame-%06d.color.png', i-1);
  fprintf(fileID, '%s %.10f %.10f %.10f %10f %.10f %.10f %10f\n', rgb_filename, PoseTQ(1),PoseTQ(2),PoseTQ(3),PoseTQ(4),PoseTQ(5),PoseTQ(6),PoseTQ(7));
end
fclose(fileID);
     

