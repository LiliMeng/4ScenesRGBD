

import numpy as np

'''
parser = argparse.ArgumentParser()
parser.add_argument('--folder', type = str, required = True)
parser.add_argument('--frame_num', type = int, required = True)
args = parser.parse_args()
'''
folder = '/Users/jimmy/Desktop/images/4_scenes/apt1/living/data'
frame_num = 1528

for i in range(0, frame_num):
    file1 = '%s/frame-%06d.pose.txt' % (folder, i)
    f = open(file1)
    s = f.read()
    f.close()
    
    if s.find('INF') != -1:
        print 'invalid pose %s %s\n' % (file1, s)    
    
