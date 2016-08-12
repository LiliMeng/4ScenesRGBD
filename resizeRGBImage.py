
import cv2
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('--from_foler', type = str, required = True)
parser.add_argument('--to_folder', type = str, required = True)
parser.add_argument('--start_index', type = int, required = True)
parser.add_argument('--end_index', type = int, required = True)
parser.add_argument('--width', type = int, required = True)
parser.add_argument('--height', type = int, required = True)
args = parser.parse_args()

#from_folder = '/Users/jimmy/Desktop/images/4_scenes/apt1/living/data/'
#to_folder   = '/Users/jimmy/Desktop/images/4_scenes/apt1/living/rgb/'

from_folder = args.from_folder
to_folder   = args.to_folder

start_index = args.start_index
end_index   = args.end_index


width = args.width
height = args.height


for i in range(start_index, end_index):
    file1 = '%s/frame-%06d.color.jpg' % (from_folder, i)
    file2 = '%s/frame-%06d.color.png' % (to_folder, i)

    im = cv2.imread(file1, 1)
    im2 = cv2.resize(im, (width, height), interpolation = cv2.INTER_LINEAR)
    cv2.imwrite(file2, im2)

    if i%100 == 0 and i > 0:
        print 'finish %d images' % i

print 'Done'



