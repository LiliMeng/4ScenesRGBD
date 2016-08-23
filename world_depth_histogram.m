

world_depth1=load('/Users/jimmy/Desktop/RGBD_4Scenes/apt1/kitchen/test_depth/frame-000000world_coordinate_imge_file_z.txt');
world_depth2=load('/Users/jimmy/Desktop/RGBD_4Scenes/apt1/kitchen/test_depth/frame-000100world_coordinate_imge_file_z.txt');
world_depth3=load('/Users/jimmy/Desktop/RGBD_4Scenes/apt1/kitchen/test_depth/frame-000200world_coordinate_imge_file_z.txt');
world_depth4=load('/Users/jimmy/Desktop/RGBD_4Scenes/apt1/kitchen/test_depth/frame-000300world_coordinate_imge_file_z.txt');
world_depth5=load('/Users/jimmy/Desktop/RGBD_4Scenes/apt1/kitchen/test_depth/frame-000400world_coordinate_imge_file_z.txt');
world_depth6=load('/Users/jimmy/Desktop/RGBD_4Scenes/apt1/kitchen/test_depth/frame-000520world_coordinate_imge_file_z.txt');
world_depth7=load('/Users/jimmy/Desktop/RGBD_4Scenes/apt1/kitchen/test_depth/frame-000610world_coordinate_imge_file_z.txt');
world_depth8=load('/Users/jimmy/Desktop/RGBD_4Scenes/apt1/kitchen/test_depth/frame-000700world_coordinate_imge_file_z.txt');
world_depth9=load('/Users/jimmy/Desktop/RGBD_4Scenes/apt1/kitchen/test_depth/frame-000800world_coordinate_imge_file_z.txt');
world_depth10=load('/Users/jimmy/Desktop/RGBD_4Scenes/apt1/kitchen/test_depth/frame-000900world_coordinate_imge_file_z.txt');

world_depth_10_imgs=[world_depth1;world_depth2;world_depth3;world_depth4;world_depth5;world_depth6;world_depth7;world_depth8;world_depth9;world_depth10];

if world_depth_10_imgs(:)<0 
    printf(1)
end
figure

histogram(world_depth_10_imgs);
title('world depth histogram random 10 images from apt1/kitchen')
