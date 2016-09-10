clear all;
close all;

set(groot,'DefaultFigureRenderer','painters')


cameraSize=0.001;
for i = 1:356
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
  
  totalT(i,:)=T;
  
  if i>=2

    pts = [totalT(i-1,:); totalT(i,:)];
     
    line(pts(:,1), pts(:,2), pts(:,3),'Color','r','LineWidth',1.5, 'LineStyle','-')

  end
  
  cam = plotCamera('Location',T,'Orientation',R,'Size', cameraSize, ...
    'Color', 'b', 'Opacity', 0.2);
  grid on
  axis equal
  axis manual
  xlabel('X (m)');
  ylabel('Y (m)');
  zlabel('Z (m)');
  %xlim([-2.10, -2.00])
 % ylim([-0.75, -0.60])
 % zlim([1.90,2.05])

  hold on;
  
 % pause(0.5);
  drawnow();
  

end
totalT;
max(totalT(:,1))
min(totalT(:,1))

max(totalT(:,2))
min(totalT(:,2))

max(totalT(:,3))
min(totalT(:,3))
