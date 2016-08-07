clear all;
close all;

%PoseFileName=dir('/Users/jimmy/Desktop/images/TUM_SLAM/freiburg3_long_office_household/seq-01/*.txt');

%numFiles=size(PoseFileName,1);

for i = 1:3925
  poseFileName = sprintf('/Users/jimmy/Desktop/images/4_scenes/office1/gates362/data/frame-%06d.pose.txt', i-1);
  pose=load(poseFileName);
  
  for j=1:3
      tran(i,j)=pose(j,4);
  end
end

transFileName = sprintf('/Users/jimmy/Desktop/RGBD_4Scenes/data_preparation/trans.txt');
fileID = fopen(transFileName,'w');
for i=1:3925
    fprintf(fileID, '%.10f %.10f %.10f \n', tran(i,1), tran(i,2), tran(i,3));
end
fclose(fileID);
