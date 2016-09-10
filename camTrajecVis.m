clear all;
close all;

set(gcf,'Renderer','OpenGL');
ptCloud = pcread('/home/lci/workspace/apt1/kitchen/akitchen.ply');
pcshow(ptCloud);
hold on;


cameraSize=0.1;

interval=1;
count=1;
for i = 1:interval:356
  
  poseRTFileName = sprintf('/home/lci/workspace/apt1/kitchen/data/frame-%06d.pose.txt', i-1);
  PoseRT=load(poseRTFileName);
 
  
  for j=1:3
      for k=1:3
          R(j,k)=PoseRT(j,k);
      end
  end
  
  for m=1:3
      
      T(m)=PoseRT(m,4);
  end    
  
  totalT(count,:)=T;
  
  if count>=2

    pts = [totalT(count-1,:); totalT(count,:)];
     
    line(pts(:,1), pts(:,2), pts(:,3),'Color','r','LineWidth',1.5, 'LineStyle','-')

  end
  
%   cam = plotCamera('Location',T,'Orientation',R,'Size', cameraSize, ...
%     'Color', 'r', 'Opacity', 0);
%   grid on
%   axis equal
%   axis manual
%   xlabel('X (m)');
%   ylabel('Y (m)');
%   zlabel('Z (m)');

  hold on;
  count=count+1
  
 % pause(0.5);
  drawnow();
  

end


count1=1;
for i1 = 358:interval:714
  poseRTFileName1 = sprintf('/home/lci/workspace/apt1/kitchen/data/frame-%06d.pose.txt', i1-1);
  PoseRT1=load(poseRTFileName1);
 
  
  for j=1:3
      for k=1:3
          R1(j,k)=PoseRT1(j,k);
      end
  end
  
  for m=1:3
      T1(m)=PoseRT1(m,4);
  end    
  
  totalT1(count1,:)=T1;
  
  if count1>=2

    pts1 = [totalT1(count1-1,:); totalT1(count1,:)];
     
    line(pts1(:,1), pts1(:,2), pts1(:,3),'Color','b','LineWidth',1.5, 'LineStyle','-')

  end
  
%   cam1 = plotCamera('Location',T1,'Orientation',R1,'Size', cameraSize, ...
%     'Color', 'b', 'Opacity', 0.3);
%   grid on
%   axis equal
%   axis manual
%   xlabel('X (m)');
%   ylabel('Y (m)');
%   zlabel('Z (m)');

  hold on;
  count1=count1+1
 % pause(0.5);
  drawnow();
  
end

count2=1;
for i2 = 717:interval:1100
  poseRTFileName2 = sprintf('/home/lci/workspace/apt1/kitchen/data/frame-%06d.pose.txt', i2-1);
  PoseRT2=load(poseRTFileName2);
 
  
  for j=1:3
      for k=1:3
          R2(j,k)=PoseRT2(j,k);
      end
  end
  
  for m=1:3
      T2(m)=PoseRT2(m,4);
  end    
  
  totalT2(count2,:)=T2;
  
  if count2>=2

    pts2 = [totalT2(count2-1,:); totalT2(count2,:)];
     
    line(pts2(:,1), pts2(:,2), pts2(:,3),'Color','b','LineWidth',1.5, 'LineStyle','-')

  end
  
%   cam1 = plotCamera('Location',T1,'Orientation',R1,'Size', cameraSize, ...
%     'Color', 'b', 'Opacity', 0.3);
%   grid on
%   axis equal
%   axis manual
%   xlabel('X (m)');
%   ylabel('Y (m)');
%   zlabel('Z (m)');

  hold on;
  count2=count2+1
 % pause(0.5);
  drawnow();
  
end

