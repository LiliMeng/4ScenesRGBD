clear all;
close all;



posenet_format = '/home/lci/workspace/4scenes/apt2/bed/data_test.txt';
fileID = fopen(posenet_format,'w');


invalid_matrix=-ones(4);

for i = 1:244
  poseRTFileName = sprintf('/home/lci/workspace/4scenes/apt2/bed/data/frame-%06d.pose.txt', i-1)
  PoseRT=load(poseRTFileName);
  tf=isequal(PoseRT, invalid_matrix);
  if tf==1
        continue;
  end
  PoseTQ=PoseRT2PoseTQ(PoseRT);
  rgb_filename=sprintf('image/frame-%06d.color.png', i-1);
  fprintf(fileID, '%s %.10f %.10f %.10f %10f %.10f %.10f %10f\n', rgb_filename, PoseTQ(1),PoseTQ(2),PoseTQ(3),PoseTQ(4),PoseTQ(5),PoseTQ(6),PoseTQ(7));
end

fclose(fileID);
     
